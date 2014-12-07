.class public Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;
.super Ljava/lang/Object;
.source "ResourceIDMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    }
.end annotation


# instance fields
.field protected mResourceIDs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 14

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020305

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x7f0b0000

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f0202db

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x7f0b0000

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f0202db

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0b019c

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f0200d6

    const v3, 0x7f0200d8

    const/4 v4, 0x0

    const v5, 0x7f0b02cf

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x6f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f0200af

    const v3, 0x7f0200b1

    const v4, 0x7f0200b0

    const v5, 0x7f0b0162

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020085

    const v3, 0x7f020087

    const/4 v4, 0x0

    const v5, 0x7f0b0134

    const v6, 0x7f0b02f0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f0202db

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0b0133

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f0202db

    const v3, 0x7f0202db

    const/4 v4, 0x0

    const v5, 0x7f0b0124

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f0202db

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0b0127

    const v6, 0x7f0b0301

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v0, 0x1b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020255

    const v3, 0x7f020257

    const v4, 0x7f020256

    const v5, 0x7f0b001f

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f0202db

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0b0138

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f0202db

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x7f0b0126

    const v6, 0x7f0b02fd

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v5, 0x7f0b0136

    iget-object v8, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v2, 0x7f020068

    const v3, 0x7f02006a

    const v4, 0x7f020069

    const v6, 0x7f0b02ee

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v8, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200d3

    const v9, 0x7f0200d5

    const v10, 0x7f0200d4

    const v11, 0x7f0b012b

    const v12, 0x7f0b02ed

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x62

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b015f

    const v12, 0x7f0b02f9

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b012a

    const v12, 0x7f0b0300

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b012f

    const v12, 0x7f0b0303

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b013a

    const v12, 0x7f0b02f4

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b014b

    const v12, 0x7f0b0306

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b013c

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b013f

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0139

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0156

    const v12, 0x7f0b02f1

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0140

    const v12, 0x7f0b02f3

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b014c

    const v12, 0x7f0b02f8

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0141

    const v12, 0x7f0b02f7

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0150

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0130

    const v12, 0x7f0b02fa

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0144

    const v12, 0x7f0b02fb

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02024f

    const v9, 0x7f020251

    const v10, 0x7f020250

    const v11, 0x7f0b0146

    const v12, 0x7f0b0304

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b014a

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b0160

    const v12, 0x7f0b0302

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0128

    const v12, 0x7f0b0307

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbb8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0137

    const v12, 0x7f0b0305

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbbb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0142

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbbc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0143

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbbf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b013d

    const v12, 0x7f0b02fe

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b014f

    const v12, 0x7f0b02ff

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0157

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0155

    const v12, 0x7f0b0308

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0151

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0032

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b014b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbc4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0134

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x56

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0159

    const v12, 0x7f0b02ef

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b015a

    const v12, 0x7f0b02fc

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020258

    const v9, 0x7f020260

    const/4 v10, 0x0

    const v11, 0x7f0b01c0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x54

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020258

    const v9, 0x7f020260

    const/4 v10, 0x0

    const v11, 0x7f0b01c0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x55

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020258

    const v9, 0x7f020260

    const/4 v10, 0x0

    const v11, 0x7f0b01c0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x170e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0109

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x170f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b010a

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1710

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020258

    const v9, 0x7f020260

    const/4 v10, 0x0

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b015c

    const v12, 0x7f0b02f5

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x5e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b023d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0299

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xbc7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b015d

    const v12, 0x7f0b02ec

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b02e9

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0161

    const v12, 0x7f0b02f6

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b015e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200d6

    const v9, 0x7f0200d8

    const v10, 0x7f0200d7

    const/high16 v11, 0x7f0b0000

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200d6

    const v9, 0x7f0200d8

    const v10, 0x7f0200d7

    const/high16 v11, 0x7f0b0000

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1a2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020274

    const v9, 0x7f020276

    const v10, 0x7f020275

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1a2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020277

    const v9, 0x7f020279

    const v10, 0x7f020278

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1bbc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201eb

    const v9, 0x7f0201ed

    const v10, 0x7f0201ec

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1bbd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201ee

    const v9, 0x7f0201f0

    const v10, 0x7f0201ef

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x12c

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x12c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020345

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0041

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/16 v0, 0x12d

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x12d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02034c

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b002d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/16 v0, 0x12e

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x12e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02034f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b002f

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/16 v0, 0x12f

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x12f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200e3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0030

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const/16 v0, 0x130

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x130

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x7f0b0000

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    const/16 v0, 0x131

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x131

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0031

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/16 v0, 0x133

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020346

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0032

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const/16 v0, 0x135

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x135

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0034

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    const/16 v0, 0x136

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x136

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200e1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0035

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const/16 v0, 0x137

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x137

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0036

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const/16 v0, 0x139

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x139

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200e2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0037

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    const/16 v0, 0x13a

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x13a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020350

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0042

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    const/16 v0, 0x13c

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x13c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02034c

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0160

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    const/16 v0, 0x13f

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x13f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b003e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    const/16 v0, 0x13e

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x13e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00f1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    const/16 v0, 0x140

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x140

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b003a

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    const/16 v0, 0x141

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x141

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b003b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    const/16 v0, 0x143

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x143

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b003f

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    const/16 v0, 0x147

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x147

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02034b

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0045

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_12
    const/16 v0, 0x148

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x148

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0046

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_13
    const/16 v0, 0x149

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x149

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020352

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0049

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    const/16 v0, 0x14b

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x14b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020354

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b004b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_15
    const/16 v0, 0x14c

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x14c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020343

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b004c

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    const/16 v0, 0x14d

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x14d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b003e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    const/16 v0, 0x14e

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x14e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020353

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0112

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    const/16 v0, 0x14f

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x14f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020344

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b004d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const/16 v0, 0x150

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x150

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020349

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b004f

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    const/16 v0, 0x151

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x151

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02034e

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b015f

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    const/16 v0, 0x152

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02034c

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0047

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    const/16 v0, 0x153

    invoke-static {v0}, Lcom/sec/android/app/camera/PlugInShootingModesLoader;->isShootingModeExternal(I)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x153

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02033e

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0052

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x18f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020347

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00a4

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x232f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02034d

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00a3

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x258

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020088

    const v9, 0x7f02008a

    const v10, 0x7f020089

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x259

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020085

    const v9, 0x7f020087

    const v10, 0x7f020086

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x25a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020082

    const v9, 0x7f020084

    const v10, 0x7f020083

    const v11, 0x7f0b00ee

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x25b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02008b

    const v9, 0x7f02008c

    const/4 v10, 0x0

    const/high16 v11, 0x7f0b0000

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x2bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200db

    const v9, 0x7f0200dc

    const v10, 0x7f0200da

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x2bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200db

    const v9, 0x7f0200dc

    const v10, 0x7f0200da

    const v11, 0x7f0b00ef

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x2be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200de

    const v9, 0x7f0200df

    const v10, 0x7f0200dd

    const v11, 0x7f0b00f0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x2bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200db

    const v9, 0x7f0200dc

    const/4 v10, 0x0

    const v11, 0x7f0b00f1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x320

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020296

    const v9, 0x7f020298

    const v10, 0x7f020297

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x321

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020286

    const v9, 0x7f020288

    const v10, 0x7f020287

    const v11, 0x7f0b00f6

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x322

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020289

    const v9, 0x7f02028b

    const v10, 0x7f02028a

    const v11, 0x7f0b00f8

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x323

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020283

    const v9, 0x7f020285

    const v10, 0x7f020284

    const v11, 0x7f0b00f9

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x384

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202be

    const v9, 0x7f0202c0

    const v10, 0x7f0202bf

    const v11, 0x7f0b0071

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x385

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202c4

    const v9, 0x7f0202c6

    const v10, 0x7f0202c5

    const v11, 0x7f0b0073

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x386

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202c1

    const v9, 0x7f0202c3

    const v10, 0x7f0202c2

    const v11, 0x7f0b0072

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x387

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202ca

    const v9, 0x7f0202cc

    const v10, 0x7f0202cb

    const v11, 0x7f0b0077

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202c7

    const v9, 0x7f0202c9

    const v10, 0x7f0202c8

    const v11, 0x7f0b0074

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x389

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0076

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x38a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0075

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202fa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b007f

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202f9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0082

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202f8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0080

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202f1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0081

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3fd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020303

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b008b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020301

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b008a

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x404

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202fb

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0091

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x405

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202f6

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0092

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x406

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202ff

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0093

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x407

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020301

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0094

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x408

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202fc

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0095

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x409

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202f3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0096

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x40a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202fd

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0097

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x40b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202f7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0098

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x40c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020302

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0099

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x40d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202fa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b009a

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x40e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202fa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b009b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x40f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020371

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b009c

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x410

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202fa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b009d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x411

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202fa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b009e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x412

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202fa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b009f

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x413

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202fa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00a0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x414

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202fa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00a1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x415

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202fa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00a2

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020303

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b008b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202fe

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0089

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202f2

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b008e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x3f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020304

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0090

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x41a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020055

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00a8

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x41b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02004d

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00a9

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x41c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020051

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00aa

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x41d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020053

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00ab

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x41f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020052

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00ad

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x420

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02004e

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00ae

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x422

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020050

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00b0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x424

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020054

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00b2

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x426

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02004f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00b3

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x425

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202f4

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00a4

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1f40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202fa

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x7f0b0000

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x232a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02006f

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00a4

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x232e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020071

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b019f

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x232d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020072

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x7f0b0000

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x44c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200c1

    const v9, 0x7f0200c3

    const v10, 0x7f0200c2

    const v11, 0x7f0b0071

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x44d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0078

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x44e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200b5

    const v9, 0x7f0200b7

    const v10, 0x7f0200b6

    const v11, 0x7f0b0079

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x44f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200b8

    const v9, 0x7f0200ba

    const v10, 0x7f0200b9

    const v11, 0x7f0b007a

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x450

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200bb

    const v9, 0x7f0200bd

    const v10, 0x7f0200bc

    const v11, 0x7f0b007b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x451

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200be

    const v9, 0x7f0200c0

    const v10, 0x7f0200bf

    const v11, 0x7f0b007c

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x452

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x7f0b0000

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x453

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b007d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x454

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x7f0b0000

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x455

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b007e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x456

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x7f0b0000

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x457

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x7f0b0000

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x458

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x7f0b0000

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x4b0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200ca

    const v9, 0x7f0200cc

    const v10, 0x7f0200cb

    const v11, 0x7f0b00fe

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x4b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200d0

    const v9, 0x7f0200d2

    const v10, 0x7f0200d1

    const v11, 0x7f0b00ff

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x4b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200cd

    const v9, 0x7f0200cf

    const v10, 0x7f0200ce

    const v11, 0x7f0b0100

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x514

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200a9

    const v9, 0x7f0200ab

    const v10, 0x7f0200aa

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x515

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200ac

    const v9, 0x7f0200ae

    const v10, 0x7f0200ad

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x578

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02029d

    const v9, 0x7f02029f

    const v10, 0x7f02029e

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x579

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202a0

    const v9, 0x7f0202a2

    const v10, 0x7f0202a1

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x57a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0203d1

    const v9, 0x7f0203d3

    const v10, 0x7f0203d2

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x57b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0203cf

    const v9, 0x7f0203d4

    const v10, 0x7f0203d0

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x5dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00f4

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00f5

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b006d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00f4

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b00f5

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x6a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b006d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x708

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200a3

    const v9, 0x7f0200a5

    const v10, 0x7f0200a4

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x709

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200a6

    const v9, 0x7f0200a8

    const v10, 0x7f0200a7

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x76c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02023d

    const v9, 0x7f02023f

    const v10, 0x7f02023e

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x76d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020237

    const v9, 0x7f020240

    const v10, 0x7f02023c

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x76e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020238

    const v9, 0x7f020239

    const/4 v10, 0x0

    const v11, 0x7f0b00f6

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x76f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02023a

    const v9, 0x7f02023b

    const/4 v10, 0x0

    const v11, 0x7f0b00f8

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xfa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020261

    const v9, 0x7f020263

    const v10, 0x7f020262

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xfa1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02026a

    const v9, 0x7f02026b

    const/4 v10, 0x0

    const v11, 0x7f0b0227

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xfa2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020259

    const v9, 0x7f02025b

    const v10, 0x7f02025a

    const v11, 0x7f0b0228

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xfa3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02025c

    const v9, 0x7f02025d

    const/4 v10, 0x0

    const v11, 0x7f0b0229

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xfa4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02025e

    const v9, 0x7f02025f

    const/4 v10, 0x0

    const v11, 0x7f0b022a

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xfa5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020264

    const v9, 0x7f020266

    const v10, 0x7f020265

    const v11, 0x7f0b0161

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020255

    const v9, 0x7f020257

    const/4 v10, 0x0

    const v11, 0x7f0b01b0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020255

    const v9, 0x7f020257

    const/4 v10, 0x0

    const v11, 0x7f0b01b1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1006

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020255

    const v9, 0x7f020257

    const/4 v10, 0x0

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1007

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020255

    const v9, 0x7f020257

    const/4 v10, 0x0

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020255

    const v9, 0x7f020257

    const/4 v10, 0x0

    const v11, 0x7f0b01b2

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02009d

    const v9, 0x7f02009f

    const v10, 0x7f02009e

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x7d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0200a0

    const v9, 0x7f0200a2

    const v10, 0x7f0200a1

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x834

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02026e

    const v9, 0x7f020270

    const v10, 0x7f02026f

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x835

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020271

    const v9, 0x7f020273

    const v10, 0x7f020272

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x898

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02027f

    const v9, 0x7f020281

    const v10, 0x7f020280

    const v11, 0x7f0b0102

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x899

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02027c

    const v9, 0x7f02027e

    const v10, 0x7f02027d

    const v11, 0x7f0b0103

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x91f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201b9

    const v9, 0x7f0201bb

    const v10, 0x7f0201ba

    const v11, 0x7f0b00b6

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x8fc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201cb

    const v9, 0x7f0201cd

    const v10, 0x7f0201cc

    const v11, 0x7f0b00b7

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x8fd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201e0

    const v9, 0x7f0201e2

    const v10, 0x7f0201e1

    const v11, 0x7f0b00b8

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x8fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201cb

    const v9, 0x7f0201cd

    const v10, 0x7f0201cc

    const v11, 0x7f0b00b9

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x8ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201c8

    const v9, 0x7f0201ca

    const v10, 0x7f0201c9

    const v11, 0x7f0b00ba

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x920

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201b3

    const v9, 0x7f0201b5

    const v10, 0x7f0201b4

    const v11, 0x7f0b00bb

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x900

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201d7

    const v9, 0x7f0201d9

    const v10, 0x7f0201d8

    const v11, 0x7f0b00bc

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x901

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b00bd

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x902

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201d1

    const v9, 0x7f0201d3

    const v10, 0x7f0201d2

    const v11, 0x7f0b00be

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x903

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b00bf

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x904

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b00c0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x921

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201da

    const v9, 0x7f0201dc

    const v10, 0x7f0201db

    const v11, 0x7f0b00c1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x905

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b00c2

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x923

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201c2

    const v9, 0x7f0201c4

    const v10, 0x7f0201c3

    const v11, 0x7f0b00c6

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x909

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201bf

    const v9, 0x7f0201c1

    const v10, 0x7f0201c0

    const v11, 0x7f0b00c7

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x90a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201bc

    const v9, 0x7f0201be

    const v10, 0x7f0201bd

    const v11, 0x7f0b00c8

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x90b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201bc

    const v9, 0x7f0201be

    const v10, 0x7f0201bd

    const v11, 0x7f0b00c9

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x90c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b00ca

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x90d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201c5

    const v9, 0x7f0201c7

    const v10, 0x7f0201c6

    const v11, 0x7f0b00cb

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x90f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b00cf

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x910

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b00cd

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x911

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b00d0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x913

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201b0

    const v9, 0x7f0201b2

    const v10, 0x7f0201b1

    const v11, 0x7f0b00cc

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x912

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201b6

    const v9, 0x7f0201b8

    const v10, 0x7f0201b7

    const v11, 0x7f0b00d1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x915

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201dd

    const v9, 0x7f0201df

    const v10, 0x7f0201de

    const v11, 0x7f0b00d3

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x916

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b00d4

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x922

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201ad

    const v9, 0x7f0201af

    const v10, 0x7f0201ae

    const v11, 0x7f0b00d5

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x91c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b00d7

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x919

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201ce

    const v9, 0x7f0201d0

    const v10, 0x7f0201cf

    const v11, 0x7f0b00db

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x917

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b00d8

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x91a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b00de

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x918

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0201d4

    const v9, 0x7f0201d6

    const v10, 0x7f0201d5

    const v11, 0x7f0b00d9

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x91b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b00e0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x91d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b00e1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x96a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202a9

    const v9, 0x7f0202ab

    const v10, 0x7f0202aa

    const v11, 0x7f0b00ed

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x96c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202a3

    const v9, 0x7f0202a5

    const v10, 0x7f0202a4

    const v11, 0x7f0b00e2

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x960

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202a3

    const v9, 0x7f0202a5

    const v10, 0x7f0202a4

    const v11, 0x7f0b00e2

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x962

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202a6

    const v9, 0x7f0202a8

    const v10, 0x7f0202a7

    const v11, 0x7f0b00e5

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x963

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020189

    const v9, 0x7f02018b

    const v10, 0x7f02018a

    const v11, 0x7f0b00e6

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x964

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b00e7

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x965

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020186

    const v9, 0x7f020188

    const v10, 0x7f020187

    const v11, 0x7f0b00e8

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x966

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202ac

    const v9, 0x7f0202ae

    const v10, 0x7f0202ad

    const v11, 0x7f0b00e9

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x967

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const v9, 0x7f0202db

    const/4 v10, 0x0

    const v11, 0x7f0b00dd

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x968

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020183

    const v9, 0x7f020185

    const v10, 0x7f020184

    const v11, 0x7f0b00eb

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x969

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020180

    const v9, 0x7f020182

    const v10, 0x7f020181

    const v11, 0x7f0b00ec

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02021f

    const v9, 0x7f020221

    const v10, 0x7f020220

    const v11, 0x7f0b0106

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020222

    const v9, 0x7f020224

    const v10, 0x7f020223

    const v11, 0x7f0b0107

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x170e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020225

    const v9, 0x7f020227

    const v10, 0x7f020226

    const v11, 0x7f0b0109

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x170f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020216

    const v9, 0x7f020218

    const v10, 0x7f020217

    const v11, 0x7f0b010a

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02021f

    const v9, 0x7f020221

    const v10, 0x7f020220

    const v11, 0x7f0b010c

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020222

    const v9, 0x7f020224

    const v10, 0x7f020223

    const v11, 0x7f0b0108

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020213

    const v9, 0x7f020215

    const v10, 0x7f020214

    const v11, 0x7f0b010d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x7f0b0000

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xc81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v11, 0x7f0b0000

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xd48

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020198

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xd49

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020199

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xdac

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xdad

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020079

    const v9, 0x7f02007a

    const/4 v10, 0x0

    const v11, 0x7f0b01a1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020077

    const v9, 0x7f020078

    const/4 v10, 0x0

    const v11, 0x7f0b01a9

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020068

    const v9, 0x7f02006a

    const v10, 0x7f020069

    const v11, 0x7f0b01a9

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020068

    const v9, 0x7f02006a

    const v10, 0x7f020069

    const v11, 0x7f0b01a8

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020068

    const v9, 0x7f02006a

    const v10, 0x7f020069

    const v11, 0x7f0b01a7

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020068

    const v9, 0x7f02006a

    const v10, 0x7f020069

    const v11, 0x7f0b01a6

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020068

    const v9, 0x7f02006a

    const v10, 0x7f020069

    const v11, 0x7f0b01a5

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020068

    const v9, 0x7f02006a

    const v10, 0x7f020069

    const v11, 0x7f0b01a4

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020068

    const v9, 0x7f02006a

    const v10, 0x7f020069

    const v11, 0x7f0b01a3

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020068

    const v9, 0x7f02006a

    const v10, 0x7f020069

    const v11, 0x7f0b01a2

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020068

    const v9, 0x7f02006a

    const v10, 0x7f020069

    const v11, 0x7f0b01a1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe74

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020192

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b019c

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe75

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020194

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0162

    const v12, 0x7f0b02f2

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v6 .. v13}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIIIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe76

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020196

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b019d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe77

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020197

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b019e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe78

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020195

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b019f

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xe79

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020193

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b01a0

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xed8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xed9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202db

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xf3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020245

    const v9, 0x7f020247

    const v10, 0x7f020246

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0xf3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020243

    const v9, 0x7f020248

    const v10, 0x7f020244

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02003b

    const v9, 0x7f02003d

    const v10, 0x7f02003c

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1195

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020029

    const v9, 0x7f02002b

    const v10, 0x7f02002a

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x125c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202b2

    const v9, 0x7f0202b4

    const v10, 0x7f0202b3

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x125d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202af

    const v9, 0x7f0202b1

    const v10, 0x7f0202b0

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x12c0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020241

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0277

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x12c1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020242

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0276

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202bb

    const v9, 0x7f0202bd

    const v10, 0x7f0202bc

    const v11, 0x7f0b024b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1389

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202b8

    const v9, 0x7f0202ba

    const v10, 0x7f0202b9

    const v11, 0x7f0b024c

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x138a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202b5

    const v9, 0x7f0202b7

    const v10, 0x7f0202b6

    const v11, 0x7f0b024d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1450

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020383

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0244

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1451

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020387

    const/4 v9, 0x0

    const/4 v10, 0x0

    const v11, 0x7f0b0245

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1518

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02001f

    const v9, 0x7f020020

    const/4 v10, 0x0

    const v11, 0x7f0b0274

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1519

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02001d

    const v9, 0x7f02001e

    const/4 v10, 0x0

    const v11, 0x7f0b0275

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x16a8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02007c

    const v9, 0x7f02007e

    const v10, 0x7f02007d

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x16a9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02007f

    const v9, 0x7f020081

    const v10, 0x7f020080

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x189c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02018c

    const v9, 0x7f02018e

    const v10, 0x7f02018d

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x189d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02018f

    const v9, 0x7f020191

    const v10, 0x7f020190

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1770

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02022c

    const v9, 0x7f02022d

    const/4 v10, 0x0

    const v11, 0x7f0b020d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1771

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02022a

    const v9, 0x7f02022b

    const/4 v10, 0x0

    const v11, 0x7f0b020e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1772

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020228

    const v9, 0x7f020229

    const/4 v10, 0x0

    const v11, 0x7f0b020f

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1773

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020219

    const v9, 0x7f02021a

    const/4 v10, 0x0

    const v11, 0x7f0b020a

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1774

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02021b

    const v9, 0x7f02021c

    const/4 v10, 0x0

    const v11, 0x7f0b020b

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1775

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02021d

    const v9, 0x7f02021e

    const/4 v10, 0x0

    const v11, 0x7f0b020c

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x15e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02029d

    const v9, 0x7f02029f

    const v10, 0x7f02029e

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x15e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202a0

    const v9, 0x7f0202a2

    const v10, 0x7f0202a1

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1964

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202e5

    const v9, 0x7f0202e5

    const v10, 0x7f0202e5

    const v11, 0x7f0b0240

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1965

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f0202e4

    const v9, 0x7f0202e4

    const/4 v10, 0x0

    const v11, 0x7f0b0241

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1838

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02007c

    const v9, 0x7f02007e

    const v10, 0x7f02007d

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1839

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02007f

    const v9, 0x7f020081

    const/4 v10, 0x0

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x17d7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020011

    const v9, 0x7f020013

    const v10, 0x7f020012

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x17d6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020014

    const v9, 0x7f020016

    const v10, 0x7f020015

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1a90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020267

    const v9, 0x7f020269

    const v10, 0x7f020268

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1a91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020264

    const v9, 0x7f020266

    const v10, 0x7f020265

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1af4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02008d

    const v9, 0x7f02008f

    const v10, 0x7f02008e

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x1af5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020090

    const v9, 0x7f020092

    const v10, 0x7f020091

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x51e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02005f

    const v9, 0x7f020061

    const v10, 0x7f020060

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x51f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020062

    const v9, 0x7f020064

    const v10, 0x7f020063

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x262

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020059

    const v9, 0x7f02005b

    const v10, 0x7f02005a

    const v11, 0x7f0b011e

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x263

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f02005c

    const v9, 0x7f02005e

    const v10, 0x7f02005d

    const v11, 0x7f0b011d

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    const/16 v1, 0x264

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v6, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    const v8, 0x7f020056

    const v9, 0x7f020058

    const v10, 0x7f020057

    const v11, 0x7f0b00ee

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;-><init>(Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;IIII)V

    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public get(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getResourceIDByIndex(I)Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap;->mResourceIDs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/resourcedata/ResourceIDMap$ResourceIDSet;

    return-object v1
.end method
