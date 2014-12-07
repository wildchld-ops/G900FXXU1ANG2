.class public Lcom/samsung/contacts/speeddial/SpeedDialActivity;
.super Landroid/app/Activity;
.source "SpeedDialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/contacts/speeddial/SpeedDialActivity$DataBrowseListAdapter;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mChecked:Z

.field private mDetailViewUri:Landroid/net/Uri;

.field private mDisplaySpdInfo:Z

.field private mIsFromDetail:Z

.field private mIsHelpMode:Z

.field protected mSelectedNumber:I

.field private mSpdlFragment:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

.field protected mSpinRange:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsFromDetail:Z

    iput-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsHelpMode:Z

    iput-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mDisplaySpdInfo:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Z
    .locals 1
    .param p0    # Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mChecked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/contacts/speeddial/SpeedDialActivity;Z)Z
    .locals 0
    .param p0    # Lcom/samsung/contacts/speeddial/SpeedDialActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mChecked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/contacts/speeddial/SpeedDialActivity;Landroid/content/Context;)V
    .locals 0
    .param p0    # Lcom/samsung/contacts/speeddial/SpeedDialActivity;
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->setDoNotShowAgainDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)Z
    .locals 1
    .param p0    # Lcom/samsung/contacts/speeddial/SpeedDialActivity;

    iget-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsFromDetail:Z

    return v0
.end method

.method static synthetic access$302(Lcom/samsung/contacts/speeddial/SpeedDialActivity;Z)Z
    .locals 0
    .param p0    # Lcom/samsung/contacts/speeddial/SpeedDialActivity;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mDisplaySpdInfo:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/contacts/speeddial/SpeedDialActivity;JLandroid/net/Uri;)V
    .locals 0
    .param p0    # Lcom/samsung/contacts/speeddial/SpeedDialActivity;
    .param p1    # J
    .param p3    # Landroid/net/Uri;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->assignSpeedDial(JLandroid/net/Uri;)V

    return-void
.end method

.method private assignSpeedDial(JLandroid/net/Uri;)V
    .locals 3
    .param p1    # J
    .param p3    # Landroid/net/Uri;

    const-wide/16 v1, -0x1

    cmp-long v1, p1, v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    iget v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    add-int v0, v1, v2

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlFragment:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlFragment:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    invoke-virtual {v1, v0, p1, p2}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->insertspdl(IJ)V

    :cond_2
    invoke-direct {p0, p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getDoNotShowAgainDialog(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->doShowSpdlInfo()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_3
    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsFromDetail:Z

    if-eqz v1, :cond_5

    invoke-direct {p0, p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getDoNotShowAgainDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0e03d9

    invoke-virtual {p0, v1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->finish()V

    :cond_5
    if-nez p3, :cond_0

    const-string v1, "SpeedDialActivity"

    const-string v2, "Contact uri is null, contact does not exist."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private customActivityResult(ILandroid/content/Intent;)V
    .locals 13
    .param p1    # I
    .param p2    # Landroid/content/Intent;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    iget v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    add-int v12, v0, v1

    const-wide/16 v10, -0x1

    const-wide/16 v6, -0x1

    const-string v0, "contact_id"

    const-wide/16 v4, -0x1

    invoke-virtual {p2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_1

    const-string v0, "SpeedDialActivity"

    const-string v1, "customActivityResult : contactId is -1"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contact_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mimetype"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_3
    const-wide/16 v0, -0x1

    cmp-long v0, v10, v0

    if-nez v0, :cond_4

    const-string v0, "SpeedDialActivity"

    const-string v1, "customActivityResult : dataId is -1"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlFragment:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    invoke-virtual {v0, v12, v10, v11}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->insertspdl(IJ)V

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v8

    if-nez v8, :cond_5

    const-string v0, "SpeedDialActivity"

    const-string v1, "customActivityResult : Contact uri is null, contact does not exist."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlFragment:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    invoke-virtual {v0}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->startQuery()V

    goto/16 :goto_0
.end method

.method private doShowPicker()V
    .locals 15

    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v14, -0x1

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mDetailViewUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v3

    const-string v0, "display_name"

    aput-object v0, v2, v5

    const/4 v0, 0x2

    const-string v1, "data1"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "data2"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "data3"

    aput-object v1, v2, v0

    const-string v12, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    const/4 v13, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    new-instance v11, Lcom/samsung/contacts/speeddial/SpeedDialActivity$DataBrowseListAdapter;

    invoke-direct {v11, p0, p0, v7}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$DataBrowseListAdapter;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity;Landroid/content/Context;Landroid/database/Cursor;)V

    new-instance v8, Lcom/samsung/contacts/speeddial/SpeedDialActivity$3;

    invoke-direct {v8, p0, v7, v11}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$3;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity;Landroid/database/Cursor;Lcom/samsung/contacts/speeddial/SpeedDialActivity$DataBrowseListAdapter;)V

    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v13}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6, v11, v14, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private doShowSpdlInfo()Landroid/app/AlertDialog;
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v6, 0x7f030067

    invoke-virtual {v2, v6, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f080177

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v6, 0x7f080178

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-boolean v6, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mChecked:Z

    invoke-virtual {v1, v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    new-instance v6, Lcom/samsung/contacts/speeddial/SpeedDialActivity$1;

    invoke-direct {v6, p0, v1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$1;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity;Lcom/sec/android/touchwiz/widget/TwCheckBox;)V

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f080176

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_ExtendSpeedDialTo100"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e03dd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlFragment:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    invoke-virtual {v8}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->getMaxCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    const/16 v8, 0x26

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    const/4 v8, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const v6, 0x7f0e030c

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v12}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x104000a

    new-instance v8, Lcom/samsung/contacts/speeddial/SpeedDialActivity$2;

    invoke-direct {v8, p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity$2;-><init>(Lcom/samsung/contacts/speeddial/SpeedDialActivity;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e03dc

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlFragment:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    invoke-virtual {v8}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->getMaxCount()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getDoNotShowAgainDialog(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mDisplaySpdInfo:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "showSpdlInfoDialog"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method private getOnePhoneNumberId()J
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide/16 v9, -0x1

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mDetailViewUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    new-array v2, v13, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v12

    const-string v11, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    new-array v4, v13, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v12

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "contact_id=? AND mimetype=\'vnd.android.cursor.item/phone_v2\'"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v13, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v9
.end method

.method private getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p1    # Landroid/content/Context;

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private setDoNotShowAgainDialog(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "showSpdlInfoDialog"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method protected deleteSpdl(I)Z
    .locals 2
    .param p1    # I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlFragment:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlFragment:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    invoke-virtual {v1, p1}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;->deletespdl(I)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected enableHelpMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsHelpMode:Z

    return-void
.end method

.method protected getIsHelpMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsHelpMode:Z

    return v0
.end method

.method protected insertSpdl(I)Z
    .locals 6
    .param p1    # I

    const/4 v5, 0x1

    iget v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    sub-int v3, p1, v3

    iput v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->doShowSpdlInfo()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAlertDialog:Landroid/app/AlertDialog;

    iget-boolean v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsFromDetail:Z

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getOnePhoneNumberId()J

    move-result-wide v0

    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->doShowPicker()V

    :goto_0
    return v5

    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->assignSpeedDial(JLandroid/net/Uri;)V

    goto :goto_0

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "intent.action.INTERACTION_LIST"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "additional"

    const-string v4, "phone"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "from_speed_dial"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "index"

    iget v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v5}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1    # I
    .param p2    # I
    .param p3    # Landroid/content/Intent;

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_EnableCreateContactInSpeeddial"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    invoke-direct {p0, p2, p3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->customActivityResult(ILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "phone_data_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->assignSpeedDial(JLandroid/net/Uri;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;

    const/16 v6, 0x1e

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v3, 0x7f030124

    invoke-virtual {p0, v3}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e030c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "fromDetail"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mIsFromDetail:Z

    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "contactUri"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mDetailViewUri:Landroid/net/Uri;

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "SpeedDial"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    iput-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlFragment:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    iget-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlFragment:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    if-nez v3, :cond_2

    new-instance v3, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    invoke-direct {v3}, Lcom/samsung/contacts/speeddial/SpeedDialListFragment;-><init>()V

    iput-object v3, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlFragment:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    const v3, 0x7f0802ce

    iget-object v4, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpdlFragment:Lcom/samsung/contacts/speeddial/SpeedDialListFragment;

    const-string v5, "SpeedDial"

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    :cond_2
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "spin_range"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    const-string v0, "selected_number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    const-string v0, "spd_info"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mDisplaySpdInfo:Z

    const-string v0, "spd_info_checked"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mChecked:Z

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-boolean v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mDisplaySpdInfo:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->getDoNotShowAgainDialog(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->doShowSpdlInfo()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;

    const-string v0, "spin_range"

    iget v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSpinRange:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "selected_number"

    iget v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mSelectedNumber:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "spd_info"

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "spd_info_checked"

    iget-boolean v1, p0, Lcom/samsung/contacts/speeddial/SpeedDialActivity;->mChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
