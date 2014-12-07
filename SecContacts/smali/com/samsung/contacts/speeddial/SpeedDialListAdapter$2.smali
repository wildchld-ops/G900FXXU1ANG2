.class Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$2;
.super Ljava/lang/Object;
.source "SpeedDialListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$2;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$2;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->access$400(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v2, v1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->deleteSpdl(I)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$2;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    const/4 v3, 0x0

    # setter for: Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mIsFromQuickContact:Z
    invoke-static {v2, v3}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->access$102(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;Z)Z

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
