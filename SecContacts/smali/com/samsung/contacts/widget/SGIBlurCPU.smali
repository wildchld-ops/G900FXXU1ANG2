.class public Lcom/samsung/contacts/widget/SGIBlurCPU;
.super Ljava/lang/Object;
.source "SGIBlurCPU.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fastblur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 42
    .param p0    # Landroid/graphics/Bitmap;
    .param p1    # I

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v4, 0x1

    move/from16 v0, p1

    if-ge v0, v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v4, v5, v9

    new-array v3, v4, [I

    const-string v4, "fastblur"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    add-int/lit8 v36, v5, -0x1

    add-int/lit8 v21, v9, -0x1

    mul-int v35, v5, v9

    add-int v4, p1, p1

    add-int/lit8 v14, v4, 0x1

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v24, v0

    move/from16 v0, v35

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move/from16 v0, v35

    new-array v10, v0, [I

    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v34, v0

    add-int/lit8 v4, v14, 0x1

    shr-int/lit8 v15, v4, 0x1

    mul-int/2addr v15, v15

    mul-int/lit16 v4, v15, 0x100

    new-array v0, v4, [I

    move-object/from16 v16, v0

    const/16 v22, 0x0

    :goto_1
    mul-int/lit16 v4, v15, 0x100

    move/from16 v0, v22

    if-ge v0, v4, :cond_1

    div-int v4, v22, v15

    aput v4, v16, v22

    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    :cond_1
    const/16 v39, 0x0

    move/from16 v41, v39

    const/4 v4, 0x3

    filled-new-array {v14, v4}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [[I

    add-int/lit8 v25, p1, 0x1

    const/16 v38, 0x0

    :goto_2
    move/from16 v0, v38

    if-ge v0, v9, :cond_6

    const/4 v13, 0x0

    move/from16 v20, v13

    move/from16 v29, v13

    move v12, v13

    move/from16 v19, v13

    move/from16 v28, v13

    move v11, v13

    move/from16 v18, v13

    move/from16 v27, v13

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_3
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_3

    const/4 v4, 0x0

    move/from16 v0, v22

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, v36

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int v4, v4, v39

    aget v23, v3, v4

    add-int v4, v22, p1

    aget-object v30, v31, v4

    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    const/4 v4, 0x0

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v29, v29, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int v20, v20, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    if-lez v22, :cond_2

    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_4

    :cond_3
    move/from16 v32, p1

    const/16 v37, 0x0

    :goto_5
    move/from16 v0, v37

    if-ge v0, v5, :cond_5

    aget v4, v16, v29

    aput v4, v24, v39

    aget v4, v16, v20

    aput v4, v17, v39

    aget v4, v16, v13

    aput v4, v10, v39

    sub-int v29, v29, v28

    sub-int v20, v20, v19

    sub-int/2addr v13, v12

    sub-int v4, v32, p1

    add-int v33, v4, v14

    rem-int v4, v33, v14

    aget-object v30, v31, v4

    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    if-nez v38, :cond_4

    add-int v4, v37, p1

    add-int/lit8 v4, v4, 0x1

    move/from16 v0, v36

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    aput v4, v34, v37

    :cond_4
    aget v4, v34, v37

    add-int v4, v4, v41

    aget v23, v3, v4

    const/4 v4, 0x0

    const/high16 v6, 0xff0000

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x10

    aput v6, v30, v4

    const/4 v4, 0x1

    const v6, 0xff00

    and-int v6, v6, v23

    shr-int/lit8 v6, v6, 0x8

    aput v6, v30, v4

    const/4 v4, 0x2

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    aput v6, v30, v4

    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    add-int v29, v29, v27

    add-int v20, v20, v18

    add-int/2addr v13, v11

    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    rem-int v4, v32, v14

    aget-object v30, v31, v4

    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    add-int/lit8 v39, v39, 0x1

    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_5

    :cond_5
    add-int v41, v41, v5

    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_2

    :cond_6
    const/16 v37, 0x0

    :goto_6
    move/from16 v0, v37

    if-ge v0, v5, :cond_c

    const/4 v13, 0x0

    move/from16 v20, v13

    move/from16 v29, v13

    move v12, v13

    move/from16 v19, v13

    move/from16 v28, v13

    move v11, v13

    move/from16 v18, v13

    move/from16 v27, v13

    move/from16 v0, p1

    neg-int v4, v0

    mul-int v40, v4, v5

    move/from16 v0, p1

    neg-int v0, v0

    move/from16 v22, v0

    :goto_7
    move/from16 v0, v22

    move/from16 v1, p1

    if-gt v0, v1, :cond_9

    const/4 v4, 0x0

    move/from16 v0, v40

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int v39, v4, v37

    add-int v4, v22, p1

    aget-object v30, v31, v4

    const/4 v4, 0x0

    aget v6, v24, v39

    aput v6, v30, v4

    const/4 v4, 0x1

    aget v6, v17, v39

    aput v6, v30, v4

    const/4 v4, 0x2

    aget v6, v10, v39

    aput v6, v30, v4

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v26, v25, v4

    aget v4, v24, v39

    mul-int v4, v4, v26

    add-int v29, v29, v4

    aget v4, v17, v39

    mul-int v4, v4, v26

    add-int v20, v20, v4

    aget v4, v10, v39

    mul-int v4, v4, v26

    add-int/2addr v13, v4

    if-lez v22, :cond_8

    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    :goto_8
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    add-int v40, v40, v5

    :cond_7
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    :cond_8
    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    goto :goto_8

    :cond_9
    move/from16 v39, v37

    move/from16 v32, p1

    const/16 v38, 0x0

    :goto_9
    move/from16 v0, v38

    if-ge v0, v9, :cond_b

    const/high16 v4, -0x1000000

    aget v6, v3, v39

    and-int/2addr v4, v6

    aget v6, v16, v29

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v4, v6

    aget v6, v16, v20

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v4, v6

    aget v6, v16, v13

    or-int/2addr v4, v6

    aput v4, v3, v39

    sub-int v29, v29, v28

    sub-int v20, v20, v19

    sub-int/2addr v13, v12

    sub-int v4, v32, p1

    add-int v33, v4, v14

    rem-int v4, v33, v14

    aget-object v30, v31, v4

    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v28, v28, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v19, v19, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v12, v4

    if-nez v37, :cond_a

    add-int v4, v38, v25

    move/from16 v0, v21

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v4, v5

    aput v4, v34, v38

    :cond_a
    aget v4, v34, v38

    add-int v23, v37, v4

    const/4 v4, 0x0

    aget v6, v24, v23

    aput v6, v30, v4

    const/4 v4, 0x1

    aget v6, v17, v23

    aput v6, v30, v4

    const/4 v4, 0x2

    aget v6, v10, v23

    aput v6, v30, v4

    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v27, v27, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v18, v18, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v11, v4

    add-int v29, v29, v27

    add-int v20, v20, v18

    add-int/2addr v13, v11

    add-int/lit8 v4, v32, 0x1

    rem-int v32, v4, v14

    aget-object v30, v31, v32

    const/4 v4, 0x0

    aget v4, v30, v4

    add-int v28, v28, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    add-int v19, v19, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    add-int/2addr v12, v4

    const/4 v4, 0x0

    aget v4, v30, v4

    sub-int v27, v27, v4

    const/4 v4, 0x1

    aget v4, v30, v4

    sub-int v18, v18, v4

    const/4 v4, 0x2

    aget v4, v30, v4

    sub-int/2addr v11, v4

    add-int v39, v39, v5

    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_9

    :cond_b
    add-int/lit8 v37, v37, 0x1

    goto/16 :goto_6

    :cond_c
    const-string v4, "fastblur"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v5

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto/16 :goto_0
.end method
