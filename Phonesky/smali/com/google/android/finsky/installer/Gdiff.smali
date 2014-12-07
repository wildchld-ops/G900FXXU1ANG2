.class public Lcom/google/android/finsky/installer/Gdiff;
.super Ljava/lang/Object;
.source "Gdiff.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/installer/Gdiff$FileFormatException;
    }
.end annotation


# direct methods
.method private static copyFromOriginal([BLjava/io/RandomAccessFile;Ljava/io/OutputStream;JI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x4000

    if-gez p5, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "copyLength negative"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v3, p3, v3

    if-gez v3, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "inputOffset negative"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    invoke-virtual {p1, p3, p4}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    if-lez p5, :cond_3

    if-ge p5, v2, :cond_2

    move v1, p5

    :goto_1
    const/4 v3, 0x0

    invoke-virtual {p1, p0, v3, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    const/4 v3, 0x0

    invoke-virtual {p2, p0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p5, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "patch underrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return-void
.end method

.method private static copyFromPatch([BLjava/io/DataInputStream;Ljava/io/OutputStream;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x4000

    if-gez p3, :cond_0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "copyLength negative"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    if-ge p3, v2, :cond_1

    move v1, p3

    :goto_1
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v3, v1}, Ljava/io/DataInputStream;->readFully([BII)V

    const/4 v3, 0x0

    invoke-virtual {p2, p0, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/io/IOException;

    const-string v3, "patch underrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return-void
.end method

.method public static patch(Ljava/io/RandomAccessFile;Ljava/io/InputStream;Ljava/io/OutputStream;J)J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v2, 0x4000

    new-array v1, v2, [B

    const-wide/16 v9, 0x0

    new-instance v12, Ljava/io/BufferedInputStream;

    const/16 v2, 0x100

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v11, Ljava/io/DataInputStream;

    invoke-direct {v11, v12}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    const v2, -0x2e002e01

    if-eq v8, v2, :cond_0

    new-instance v2, Lcom/google/android/finsky/installer/Gdiff$FileFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected magic="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "%x"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/finsky/installer/Gdiff$FileFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v11}, Ljava/io/DataInputStream;->read()I

    move-result v13

    const/4 v2, 0x4

    if-eq v13, v2, :cond_1

    new-instance v2, Lcom/google/android/finsky/installer/Gdiff$FileFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected version="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/finsky/installer/Gdiff$FileFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {v11}, Ljava/io/DataInputStream;->read()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    move v6, v7

    move-object/from16 v0, p2

    invoke-static {v1, v11, v0, v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromPatch([BLjava/io/DataInputStream;Ljava/io/OutputStream;I)V

    :goto_0
    int-to-long v2, v6

    add-long/2addr v9, v2

    cmp-long v2, v9, p3

    if-lez v2, :cond_1

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Output length overrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Patch file overrun"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :sswitch_1
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v1, v11, v0, v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromPatch([BLjava/io/DataInputStream;Ljava/io/OutputStream;I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v1, v11, v0, v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromPatch([BLjava/io/DataInputStream;Ljava/io/OutputStream;I)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v11}, Ljava/io/DataInputStream;->read()I

    move-result v6

    const/4 v2, -0x1

    if-ne v6, v2, :cond_2

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected end of patch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromOriginal([BLjava/io/RandomAccessFile;Ljava/io/OutputStream;JI)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromOriginal([BLjava/io/RandomAccessFile;Ljava/io/OutputStream;JI)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromOriginal([BLjava/io/RandomAccessFile;Ljava/io/OutputStream;JI)V

    goto :goto_0

    :sswitch_6
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v11}, Ljava/io/DataInputStream;->read()I

    move-result v6

    const/4 v2, -0x1

    if-ne v6, v2, :cond_3

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unexpected end of patch"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromOriginal([BLjava/io/RandomAccessFile;Ljava/io/OutputStream;JI)V

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v6

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromOriginal([BLjava/io/RandomAccessFile;Ljava/io/OutputStream;JI)V

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromOriginal([BLjava/io/RandomAccessFile;Ljava/io/OutputStream;JI)V

    goto/16 :goto_0

    :sswitch_9
    invoke-virtual {v11}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v4

    invoke-virtual {v11}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-static/range {v1 .. v6}, Lcom/google/android/finsky/installer/Gdiff;->copyFromOriginal([BLjava/io/RandomAccessFile;Ljava/io/OutputStream;JI)V

    goto/16 :goto_0

    :sswitch_a
    return-wide v9

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_a
        0xf7 -> :sswitch_1
        0xf8 -> :sswitch_2
        0xf9 -> :sswitch_3
        0xfa -> :sswitch_4
        0xfb -> :sswitch_5
        0xfc -> :sswitch_6
        0xfd -> :sswitch_7
        0xfe -> :sswitch_8
        0xff -> :sswitch_9
    .end sparse-switch
.end method
