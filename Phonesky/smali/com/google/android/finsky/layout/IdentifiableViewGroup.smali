.class public abstract Lcom/google/android/finsky/layout/IdentifiableViewGroup;
.super Landroid/view/ViewGroup;
.source "IdentifiableViewGroup.java"

# interfaces
.implements Lcom/google/android/finsky/layout/play/Identifiable;


# instance fields
.field private mIdentifier:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/layout/IdentifiableViewGroup;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public setIdentifier(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/finsky/layout/IdentifiableViewGroup;->mIdentifier:Ljava/lang/String;

    return-void
.end method
