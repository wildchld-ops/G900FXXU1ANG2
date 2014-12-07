.class Lcom/samsung/contacts/speeddial/SpeedDialActivity$1;
.super Ljava/lang/Object;
.source "SpeedDialActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/contacts/speeddial/SpeedDialActivity;->doShowSpdlInfo()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

.field final synthetic val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iput-object p2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$1;->this$0:Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    # setter for: Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mChecked:Z
    invoke-static {v0, v1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->access$002(Lcom/samsung/contacts/speeddial/SpeedDialActivity;Z)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity$1;->val$checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method
