.class public abstract Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
.super Ljava/lang/Object;
.source "PreferenceFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/config/PreferenceFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SharedPreference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mFile:Lcom/google/android/finsky/config/PreferenceFile;

.field final mKey:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/android/finsky/config/PreferenceFile;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/google/android/finsky/config/PreferenceFile;
    .param p2    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/finsky/config/PreferenceFile;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mFile:Lcom/google/android/finsky/config/PreferenceFile;

    iput-object p2, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mDefaultValue:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final exists()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mFile:Lcom/google/android/finsky/config/PreferenceFile;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mFile:Lcom/google/android/finsky/config/PreferenceFile;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->read(Landroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public final put(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v2, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mFile:Lcom/google/android/finsky/config/PreferenceFile;

    invoke-virtual {v2}, Lcom/google/android/finsky/config/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/finsky/config/PreferenceFile;->commit(Landroid/content/SharedPreferences$Editor;)Z

    return-void
.end method

.method protected abstract read(Landroid/content/SharedPreferences;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            ")TT;"
        }
    .end annotation
.end method

.method public final remove()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mFile:Lcom/google/android/finsky/config/PreferenceFile;

    invoke-virtual {v0}, Lcom/google/android/finsky/config/PreferenceFile;->open()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/finsky/config/PreferenceFile;->commit(Landroid/content/SharedPreferences$Editor;)Z

    return-void
.end method

.method protected abstract write(Landroid/content/SharedPreferences$Editor;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences$Editor;",
            "TT;)V"
        }
    .end annotation
.end method
