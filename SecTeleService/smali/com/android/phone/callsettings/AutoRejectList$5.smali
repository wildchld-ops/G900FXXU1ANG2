.class Lcom/android/phone/callsettings/AutoRejectList$5;
.super Ljava/lang/Object;
.source "AutoRejectList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/callsettings/AutoRejectList;->initLayout(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/callsettings/AutoRejectList;


# direct methods
.method constructor <init>(Lcom/android/phone/callsettings/AutoRejectList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectList;->mScreenType:I
    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$1300(Lcom/android/phone/callsettings/AutoRejectList;)I

    move-result v4

    if-ne v4, v1, :cond_1

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    # invokes: Lcom/android/phone/callsettings/AutoRejectList;->updateDeleteScreenItems()V
    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$1200(Lcom/android/phone/callsettings/AutoRejectList;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p3, :cond_3

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$500(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iget v4, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    if-eqz v4, :cond_2

    move v1, v5

    :cond_2
    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectItemList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$500(Lcom/android/phone/callsettings/AutoRejectList;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;

    iput v1, v4, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectItem;->checked:I

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    invoke-virtual {v4}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "unknown_mode"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/android/phone/callsettings/AutoRejectList$5;->this$0:Lcom/android/phone/callsettings/AutoRejectList;

    # getter for: Lcom/android/phone/callsettings/AutoRejectList;->mAutoRejectAdapter:Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;
    invoke-static {v4}, Lcom/android/phone/callsettings/AutoRejectList;->access$000(Lcom/android/phone/callsettings/AutoRejectList;)Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    if-eqz v4, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;

    if-eqz v3, :cond_0

    iget-object v0, v3, Lcom/android/phone/callsettings/AutoRejectList$AutoRejectAdapter$ViewHolder;->checkbox:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method
