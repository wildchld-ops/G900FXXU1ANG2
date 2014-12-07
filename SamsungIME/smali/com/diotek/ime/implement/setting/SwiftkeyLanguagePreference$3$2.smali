.class Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;
.super Ljava/lang/Object;
.source "SwiftkeyLanguagePreference.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->onComplete(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;Z)V
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iput-boolean p2, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->val$success:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->val$success:Z

    if-eqz v4, :cond_2

    const-string v4, "SamsungIME"

    const-string v5, "SwiftkeyLanguagePreference.VOlistener : Complete to Download Swiftkey langaue"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "download-vocur"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "download-vomax"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "download-skmax"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "download-skcur"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "download-state"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mIsDownloaded:Z
    invoke-static {v4, v9}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$702(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)Z

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v4

    invoke-interface {v4}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v5

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$802(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferences:Landroid/content/SharedPreferences;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    # setter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4, v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$902(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    const v2, 0x7f0d01d4

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePackManager:Lcom/touchtype_fluency/util/LanguagePackManager;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1200(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v5

    invoke-virtual {v4, v5, v9}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$900(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mlanguageID:Ljava/lang/String;
    invoke-static {}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$800()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->sharedPreferencesEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$900(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->statusTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1300(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/widget/TextView;

    move-result-object v4

    const v5, 0x7f0d01cc

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v5

    invoke-interface {v5}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->enableCheckBox:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.inputmethod.language_downloaded"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->rebuildLanguageList()V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V
    invoke-static {v4, v9}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;I)V

    invoke-static {}, Lcom/diotek/ime/framework/repository/RepositoryImpl;->getInstance()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v1

    const-string v4, "RELOAD_LANGUAGEPACK"

    invoke-interface {v1, v4, v9}, Lcom/diotek/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :goto_2
    return-void

    :cond_1
    const v2, 0x7f0d01db

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v4

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v5, v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v5}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SwiftkeyLanguagePreference.VOlistener : Fail to Download Swiftkey langaue "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v6

    invoke-interface {v6}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "download-vocur"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "download-vomax"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "download-skmax"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "download-skcur"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v4, "download-state"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->mLanguagePack:Lcom/touchtype_fluency/util/LanguagePack;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/touchtype_fluency/util/LanguagePack;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/touchtype_fluency/util/LanguagePack;->setMetadata(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->drawProgressBarComplete(I)V
    invoke-static {v4, v8}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;I)V

    const v2, 0x7f0d01d6

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->parent:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v6, v6, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # getter for: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->languageNameTitle:Ljava/lang/String;
    invoke-static {v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$1100(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3$2;->this$1:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;

    iget-object v4, v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference$3;->this$0:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    # invokes: Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->showDownloadingState(Z)V
    invoke-static {v4, v8}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->access$000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;Z)V

    goto/16 :goto_2

    :catch_0
    move-exception v4

    goto :goto_3

    :catch_1
    move-exception v4

    goto/16 :goto_0
.end method
