.class public Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;
.super Landroid/app/Fragment;
.source "MyEmergencyInfoEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$Listener;
    }
.end annotation


# static fields
.field private static final PROFILE_DATA_URI:Landroid/net/Uri;


# instance fields
.field private mAllergies:Ljava/lang/String;

.field private mAllergiesEditText:Landroid/widget/EditText;

.field private mAllergiesView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mCurrentMedications:Ljava/lang/String;

.field private mCurrentMedicationsEditText:Landroid/widget/EditText;

.field private mCurrentMedicationsView:Landroid/view/View;

.field private mDisplayName:Ljava/lang/String;

.field private mHasDetail:Z

.field private mHealthRecord:Ljava/lang/String;

.field private mHealthRecordEditText:Landroid/widget/EditText;

.field private mHealthRecordView:Landroid/view/View;

.field private mListener:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$Listener;

.field private final mMyEmergencyInfoLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mNameEditText:Landroid/widget/EditText;

.field private mNameView:Landroid/view/View;

.field private mNoDetail:Z

.field private mOther:Ljava/lang/String;

.field private mOtherEditText:Landroid/widget/EditText;

.field private mOtherView:Landroid/view/View;

.field private mRawContactId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.android.contacts/profile/data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->PROFILE_DATA_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    new-instance v0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$2;-><init>(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;)V

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mMyEmergencyInfoLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;)Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$Listener;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mListener:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mNameEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->PROFILE_DATA_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mRawContactId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;Landroid/database/Cursor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->bindData(Landroid/database/Cursor;)V

    return-void
.end method

.method private bindData(Landroid/database/Cursor;)V
    .locals 3

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mHealthRecord:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mAllergies:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mCurrentMedications:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mOther:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mHealthRecordEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mHealthRecord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mAllergiesEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mAllergies:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mCurrentMedicationsEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mCurrentMedications:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mOtherEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mOther:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mHasDetail:Z

    :goto_0
    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mNameEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mNameEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mHasDetail:Z

    goto :goto_0
.end method

.method private setupEditorView(Landroid/view/View;)V
    .locals 7

    const v6, 0x7f0e04a3

    const v5, 0x7f0e04a2

    const v4, 0x7f0e04a1

    const v3, 0x7f080261

    const v2, 0x7f080260

    const v0, 0x7f080259

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mNameView:Landroid/view/View;

    const v0, 0x7f08025a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mHealthRecordView:Landroid/view/View;

    const v0, 0x7f08025b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mAllergiesView:Landroid/view/View;

    const v0, 0x7f08025c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mCurrentMedicationsView:Landroid/view/View;

    const v0, 0x7f08025d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mOtherView:Landroid/view/View;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mNameView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mHealthRecordView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mAllergiesView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mCurrentMedicationsView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e04a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mOtherView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0e04a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mNameView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mNameEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mHealthRecordView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mHealthRecordEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mHealthRecordEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mAllergiesView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mAllergiesEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mAllergiesEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mCurrentMedicationsView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mCurrentMedicationsEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mCurrentMedicationsEditText:Landroid/widget/EditText;

    const v1, 0x7f0e04a4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mOtherView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mOtherEditText:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mOtherEditText:Landroid/widget/EditText;

    const v1, 0x7f0e04a5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHint(I)V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mNameEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$1;-><init>(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private startLoading()V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mMyEmergencyInfoLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f0300e6

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->setupEditorView(Landroid/view/View;)V

    return-object v0
.end method

.method public onSaveAction()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mRawContactId:Ljava/lang/String;

    if-nez v2, :cond_3

    sget-object v2, Landroid/provider/ContactsContract$Profile;->CONTENT_RAW_CONTACTS_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "account_name"

    const-string v4, "vnd.sec.contact.phone"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "account_type"

    const-string v4, "vnd.sec.contact.phone"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->PROFILE_DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "raw_contact_id"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data1"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->PROFILE_DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "raw_contact_id"

    invoke-virtual {v2, v3, v6}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data1"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mHealthRecordEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data2"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mAllergiesEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data3"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mCurrentMedicationsEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data4"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mOtherEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "mimetype"

    const-string v4, "vnd.sec.cursor.item/emergency_info"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/content/ContentProviderClient;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mNoDetail:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/samsung/contacts/emergency/MyEmergencyInfoDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_2
    return-void

    :cond_3
    iget-object v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mDisplayName:Ljava/lang/String;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->PROFILE_DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "raw_contact_id =? AND mimetype =?"

    new-array v4, v8, [Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mRawContactId:Ljava/lang/String;

    aput-object v5, v4, v6

    const-string v5, "vnd.android.cursor.item/name"

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data1"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    iget-boolean v2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mHasDetail:Z

    if-eqz v2, :cond_5

    sget-object v2, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->PROFILE_DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "raw_contact_id =? AND mimetype =?"

    new-array v4, v8, [Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mRawContactId:Ljava/lang/String;

    aput-object v5, v4, v6

    const-string v5, "vnd.sec.cursor.item/emergency_info"

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data1"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mHealthRecordEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data2"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mAllergiesEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data3"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mCurrentMedicationsEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data4"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mOtherEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->PROFILE_DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "data1"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mNameEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "mimetype"

    const-string v4, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "raw_contact_id"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mRawContactId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_5
    sget-object v2, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->PROFILE_DATA_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "data1"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mHealthRecordEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data2"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mAllergiesEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data3"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mCurrentMedicationsEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "data4"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mOtherEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "mimetype"

    const-string v4, "vnd.sec.cursor.item/emergency_info"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "raw_contact_id"

    iget-object v4, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mRawContactId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    :catch_1
    move-exception v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    :cond_6
    throw v0
.end method

.method public onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    iget-object v0, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mRawContactId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->startLoading()V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mListener:Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment$Listener;

    return-void
.end method

.method public setNoDetail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mNoDetail:Z

    return-void
.end method

.method public setProfileInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mRawContactId:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/contacts/emergency/MyEmergencyInfoEditorFragment;->mDisplayName:Ljava/lang/String;

    return-void
.end method
