.class Lcom/android/contacts/common/preference/ContactsPreferences$1;
.super Ljava/lang/Object;
.source "ContactsPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/common/preference/ContactsPreferences;->onChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/common/preference/ContactsPreferences;


# direct methods
.method constructor <init>(Lcom/android/contacts/common/preference/ContactsPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

    # setter for: Lcom/android/contacts/common/preference/ContactsPreferences;->mSortOrder:I
    invoke-static {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->access$002(Lcom/android/contacts/common/preference/ContactsPreferences;I)I

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

    # setter for: Lcom/android/contacts/common/preference/ContactsPreferences;->mDisplayOrder:I
    invoke-static {v0, v1}, Lcom/android/contacts/common/preference/ContactsPreferences;->access$102(Lcom/android/contacts/common/preference/ContactsPreferences;I)I

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

    # getter for: Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;
    invoke-static {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->access$200(Lcom/android/contacts/common/preference/ContactsPreferences;)Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/preference/ContactsPreferences$1;->this$0:Lcom/android/contacts/common/preference/ContactsPreferences;

    # getter for: Lcom/android/contacts/common/preference/ContactsPreferences;->mListener:Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;
    invoke-static {v0}, Lcom/android/contacts/common/preference/ContactsPreferences;->access$200(Lcom/android/contacts/common/preference/ContactsPreferences;)Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/contacts/common/preference/ContactsPreferences$ChangeListener;->onChange()V

    :cond_0
    return-void
.end method
