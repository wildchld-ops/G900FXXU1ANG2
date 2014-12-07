.class public final Lcom/voovio/voo3d/data/Matrix4Pool;
.super Ljava/lang/Object;
.source "Matrix4Pool.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation


# static fields
.field private static m_aPool:[Lcom/voovio/voo3d/data/Matrix4;

.field private static m_nPointer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/voovio/voo3d/data/Matrix4;

    sput-object v0, Lcom/voovio/voo3d/data/Matrix4Pool;->m_aPool:[Lcom/voovio/voo3d/data/Matrix4;

    const/4 v0, -0x1

    sput v0, Lcom/voovio/voo3d/data/Matrix4Pool;->m_nPointer:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clear()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/voovio/voo3d/data/Matrix4;

    sput-object v0, Lcom/voovio/voo3d/data/Matrix4Pool;->m_aPool:[Lcom/voovio/voo3d/data/Matrix4;

    const/4 v0, -0x1

    sput v0, Lcom/voovio/voo3d/data/Matrix4Pool;->m_nPointer:I

    return-void
.end method

.method public static getMatrix4()Lcom/voovio/voo3d/data/Matrix4;
    .locals 4

    sget v1, Lcom/voovio/voo3d/data/Matrix4Pool;->m_nPointer:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget-object v1, Lcom/voovio/voo3d/data/Matrix4Pool;->m_aPool:[Lcom/voovio/voo3d/data/Matrix4;

    sget-object v2, Lcom/voovio/voo3d/data/Matrix4Pool;->m_aPool:[Lcom/voovio/voo3d/data/Matrix4;

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/voovio/voo3d/data/Matrix4;

    sput-object v1, Lcom/voovio/voo3d/data/Matrix4Pool;->m_aPool:[Lcom/voovio/voo3d/data/Matrix4;

    sget-object v1, Lcom/voovio/voo3d/data/Matrix4Pool;->m_aPool:[Lcom/voovio/voo3d/data/Matrix4;

    const/4 v2, 0x0

    new-instance v3, Lcom/voovio/voo3d/data/Matrix4;

    invoke-direct {v3}, Lcom/voovio/voo3d/data/Matrix4;-><init>()V

    aput-object v3, v1, v2

    sget v1, Lcom/voovio/voo3d/data/Matrix4Pool;->m_nPointer:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/voovio/voo3d/data/Matrix4Pool;->m_nPointer:I

    :cond_0
    sget-object v1, Lcom/voovio/voo3d/data/Matrix4Pool;->m_aPool:[Lcom/voovio/voo3d/data/Matrix4;

    sget v2, Lcom/voovio/voo3d/data/Matrix4Pool;->m_nPointer:I

    aget-object v0, v1, v2

    sget-object v1, Lcom/voovio/voo3d/data/Matrix4Pool;->m_aPool:[Lcom/voovio/voo3d/data/Matrix4;

    sget v2, Lcom/voovio/voo3d/data/Matrix4Pool;->m_nPointer:I

    add-int/lit8 v3, v2, -0x1

    sput v3, Lcom/voovio/voo3d/data/Matrix4Pool;->m_nPointer:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    return-object v0
.end method

.method public static returnMatrix4(Lcom/voovio/voo3d/data/Matrix4;)V
    .locals 2

    sget-object v0, Lcom/voovio/voo3d/data/Matrix4Pool;->m_aPool:[Lcom/voovio/voo3d/data/Matrix4;

    sget v1, Lcom/voovio/voo3d/data/Matrix4Pool;->m_nPointer:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/voovio/voo3d/data/Matrix4Pool;->m_nPointer:I

    aput-object p0, v0, v1

    return-void
.end method
