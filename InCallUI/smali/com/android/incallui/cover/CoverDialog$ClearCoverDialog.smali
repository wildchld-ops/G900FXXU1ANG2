.class public Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;
.super Landroid/app/Dialog;
.source "CoverDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/cover/CoverDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClearCoverDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/cover/CoverDialog;


# direct methods
.method public constructor <init>(Lcom/android/incallui/cover/CoverDialog;Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/android/incallui/cover/CoverDialog$ClearCoverDialog;->this$0:Lcom/android/incallui/cover/CoverDialog;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/incallui/cover/CoverDialog;->mContext:Landroid/content/Context;
    invoke-static {p1, p2}, Lcom/android/incallui/cover/CoverDialog;->access$002(Lcom/android/incallui/cover/CoverDialog;Landroid/content/Context;)Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    # getter for: Lcom/android/incallui/cover/CoverDialog;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/incallui/cover/CoverDialog;->access$000(Lcom/android/incallui/cover/CoverDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04003b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/cover/CoverCall;

    # setter for: Lcom/android/incallui/cover/CoverDialog;->mCallCardCovered:Lcom/android/incallui/cover/CoverCall;
    invoke-static {p1, v1}, Lcom/android/incallui/cover/CoverDialog;->access$102(Lcom/android/incallui/cover/CoverDialog;Lcom/android/incallui/cover/CoverCall;)Lcom/android/incallui/cover/CoverCall;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    # getter for: Lcom/android/incallui/cover/CoverDialog;->mCallCardCovered:Lcom/android/incallui/cover/CoverCall;
    invoke-static {p1}, Lcom/android/incallui/cover/CoverDialog;->access$100(Lcom/android/incallui/cover/CoverDialog;)Lcom/android/incallui/cover/CoverCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
