.class public abstract Landroid/os/storage/SaltStorage;
.super Ljava/lang/Object;
.source "SaltStorage.java"


# instance fields
.field mPersonaId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1    # I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/storage/SaltStorage;->mPersonaId:I

    iput p1, p0, Landroid/os/storage/SaltStorage;->mPersonaId:I

    return-void
.end method


# virtual methods
.method public abstract delSalt()V
.end method

.method public abstract getSalt()[B
.end method

.method public abstract putSalt([B)Z
.end method
