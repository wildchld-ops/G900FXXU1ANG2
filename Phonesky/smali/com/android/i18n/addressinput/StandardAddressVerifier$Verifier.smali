.class Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;
.super Ljava/lang/Object;
.source "StandardAddressVerifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/i18n/addressinput/StandardAddressVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Verifier"
.end annotation


# instance fields
.field private mAddress:Lcom/android/i18n/addressinput/AddressData;

.field private mListener:Lcom/android/i18n/addressinput/DataLoadListener;

.field private mProblems:Lcom/android/i18n/addressinput/AddressProblems;

.field final synthetic this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;


# direct methods
.method constructor <init>(Lcom/android/i18n/addressinput/StandardAddressVerifier;Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;Lcom/android/i18n/addressinput/DataLoadListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    iput-object p3, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    iput-object p4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mListener:Lcom/android/i18n/addressinput/DataLoadListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mListener:Lcom/android/i18n/addressinput/DataLoadListener;

    invoke-interface {v0}, Lcom/android/i18n/addressinput/DataLoadListener;->dataLoadingBegin()V

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    iget-object v2, v0, Lcom/android/i18n/addressinput/StandardAddressVerifier;->mRootVerifier:Lcom/android/i18n/addressinput/FieldVerifier;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getLanguageCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/i18n/addressinput/Util;->isExplicitLatinScript(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LATIN:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->COUNTRY:Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressProblems;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getPostalCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/i18n/addressinput/FieldVerifier;->refineVerifier(Ljava/lang/String;)Lcom/android/i18n/addressinput/FieldVerifier;

    move-result-object v2

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->ADMIN_AREA:Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressProblems;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getAdministrativeArea()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/i18n/addressinput/FieldVerifier;->refineVerifier(Ljava/lang/String;)Lcom/android/i18n/addressinput/FieldVerifier;

    move-result-object v2

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressProblems;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getLocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/i18n/addressinput/FieldVerifier;->refineVerifier(Ljava/lang/String;)Lcom/android/i18n/addressinput/FieldVerifier;

    move-result-object v2

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->DEPENDENT_LOCALITY:Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getDependentLocality()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressProblems;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v0}, Lcom/android/i18n/addressinput/AddressData;->getDependentLocality()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/i18n/addressinput/FieldVerifier;->refineVerifier(Ljava/lang/String;)Lcom/android/i18n/addressinput/FieldVerifier;

    move-result-object v2

    :cond_1
    const-string v0, "\n"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine1()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v5}, Lcom/android/i18n/addressinput/AddressData;->getAddressLine2()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Lcom/android/i18n/addressinput/Util;->joinAndSkipNulls(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->POSTAL_CODE:Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->STREET_ADDRESS:Lcom/android/i18n/addressinput/AddressField;

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->SORTING_CODE:Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getSortingCode()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->ORGANIZATION:Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getOrganization()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    sget-object v3, Lcom/android/i18n/addressinput/AddressField;->RECIPIENT:Lcom/android/i18n/addressinput/AddressField;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    invoke-virtual {v4}, Lcom/android/i18n/addressinput/AddressData;->getRecipient()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual/range {v0 .. v5}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->verifyField(Lcom/android/i18n/addressinput/LookupKey$ScriptType;Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressField;Ljava/lang/String;Lcom/android/i18n/addressinput/AddressProblems;)Z

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->this$0:Lcom/android/i18n/addressinput/StandardAddressVerifier;

    iget-object v3, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mAddress:Lcom/android/i18n/addressinput/AddressData;

    iget-object v4, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mProblems:Lcom/android/i18n/addressinput/AddressProblems;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/i18n/addressinput/StandardAddressVerifier;->postVerify(Lcom/android/i18n/addressinput/FieldVerifier;Lcom/android/i18n/addressinput/AddressData;Lcom/android/i18n/addressinput/AddressProblems;)V

    iget-object v0, p0, Lcom/android/i18n/addressinput/StandardAddressVerifier$Verifier;->mListener:Lcom/android/i18n/addressinput/DataLoadListener;

    invoke-interface {v0}, Lcom/android/i18n/addressinput/DataLoadListener;->dataLoadingEnd()V

    return-void

    :cond_2
    sget-object v1, Lcom/android/i18n/addressinput/LookupKey$ScriptType;->LOCAL:Lcom/android/i18n/addressinput/LookupKey$ScriptType;

    goto/16 :goto_0
.end method
