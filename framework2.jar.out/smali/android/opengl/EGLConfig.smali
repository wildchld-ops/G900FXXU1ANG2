.class public Landroid/opengl/EGLConfig;
.super Landroid/opengl/EGLObjectHandle;
.source "EGLConfig.java"


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/opengl/EGLObjectHandle;-><init>(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Landroid/opengl/EGLConfig;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/opengl/EGLConfig;

    invoke-virtual {p0}, Landroid/opengl/EGLObjectHandle;->getHandle()I

    move-result v3

    invoke-virtual {v0}, Landroid/opengl/EGLObjectHandle;->getHandle()I

    move-result v4

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method
