.class Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$4;
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

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$4;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$4;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$4;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget v3, v3, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSpinRange:I

    sub-int v3, v0, v3

    iput v3, v2, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSelectedNumber:I

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$4;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mListData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->access$200(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$4;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget v3, v3, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSelectedNumber:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$4;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$4;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget v3, v3, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSelectedNumber:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->isMatchedAppPLSpl(I)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_0
    const-string v3, "tel"

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$4;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mListData:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->access$200(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$4;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    iget v4, v4, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mSelectedNumber:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "phone"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$4;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->isCtcDuos:Z
    invoke-static {v2}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->access$500(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "simSlot"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter$4;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;

    # getter for: Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;->access$400(Lcom/samsung/contacts/speeddial/SpeedDialListAdapter;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method
