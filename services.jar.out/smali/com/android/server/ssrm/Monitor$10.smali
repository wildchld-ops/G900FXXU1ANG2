.class Lcom/android/server/ssrm/Monitor$10;
.super Lcom/android/server/ssrm/Monitor$CustomSettingWriter;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/Monitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/Monitor;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/ssrm/Monitor$10;->this$0:Lcom/android/server/ssrm/Monitor;

    invoke-direct {p0, p1, p2}, Lcom/android/server/ssrm/Monitor$CustomSettingWriter;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public applySetting(Lcom/android/server/ssrm/settings/Setting;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ssrm/settings/Setting",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSRM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/ssrm/settings/SettingWriter;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    if-eq v3, v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Setting;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    sput-boolean v0, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/Monitor$10;->this$0:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mPredictedSurfaceTemperature:Lcom/android/server/ssrm/PredictedSurfaceTemperature;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor$10;->this$0:Lcom/android/server/ssrm/Monitor;

    iget v1, v1, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->resetTemperature(I)V

    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method
