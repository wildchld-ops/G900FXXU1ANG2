.class Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$3;
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

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$3;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$3;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$3;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget v2, v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpinRange:I

    sub-int v2, v0, v2

    iput v2, v1, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSelectedNumber:I

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$3;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->access$400(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$SpeedDialDialogListener;

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$3;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    invoke-direct {v2, v3}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$SpeedDialDialogListener;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)V

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$3;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget v3, v3, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSelectedNumber:I

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment;->show(Landroid/app/FragmentManager;Lcom/samsung/contacts/speeddial/SpeedDialDialogFragment$Listener;IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$3;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->access$400(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    invoke-virtual {v1, v0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->insertSpdl(I)Z

    goto :goto_0
.end method
