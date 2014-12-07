.class Lcom/android/settings/dormantmode/DormantmodeSettings$3$1;
.super Ljava/lang/Object;
.source "DormantmodeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dormantmode/DormantmodeSettings$3;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/dormantmode/DormantmodeSettings$3;


# direct methods
.method constructor <init>(Lcom/android/settings/dormantmode/DormantmodeSettings$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3$1;->this$1:Lcom/android/settings/dormantmode/DormantmodeSettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1    # Landroid/view/View;

    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$3$1;->this$1:Lcom/android/settings/dormantmode/DormantmodeSettings$3;

    iget-object v0, v0, Lcom/android/settings/dormantmode/DormantmodeSettings$3;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    const/4 v1, 0x1

    # setter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->DIALOG_CURRENT_TIMEPICKER:I
    invoke-static {v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$702(I)I

    move-result v1

    # invokes: Lcom/android/settings/SettingsPreferenceFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$800(Lcom/android/settings/dormantmode/DormantmodeSettings;I)V

    return-void
.end method
