.class public Lcom/google/android/finsky/billing/BillingPreferences;
.super Ljava/lang/Object;
.source "BillingPreferences.java"


# static fields
.field public static ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static BILLING_COUNTRIES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static DEVICE_ASSOCIATION_NEEDED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static EARLIEST_PROVISIONING_CHECK_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static LAST_BILLING_COUNTRIES_REFRESH_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static LAST_DCB3_PROVISIONING_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static LAST_PROVISIONING_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/finsky/config/PreferenceFile$SharedPreference",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    new-instance v0, Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "billing_preferences"

    invoke-direct {v0, v2, v6}, Lcom/google/android/finsky/config/PreferenceFile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "last_dcb_provisioning_time_millis"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_PROVISIONING_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "earliest_dcb_provisioning_check_time_millis"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->EARLIEST_PROVISIONING_CHECK_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    sget-object v2, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v3, "billing_countries_v2"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->BILLING_COUNTRIES:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "last_billing_countries_check_v2"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_BILLING_COUNTRIES_REFRESH_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v2, "accepted_carrier_tos_version"

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->ACCEPTED_CARRIER_TOS_VERSION:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "device_association_needed"

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->DEVICE_ASSOCIATION_NEEDED:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    sget-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->sBillingPrefs:Lcom/google/android/finsky/config/PreferenceFile;

    const-string v1, "last_dcb3_provisioning_time_millis"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/finsky/config/PreferenceFile;->value(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    move-result-object v0

    sput-object v0, Lcom/google/android/finsky/billing/BillingPreferences;->LAST_DCB3_PROVISIONING_TIME_MILLIS:Lcom/google/android/finsky/config/PreferenceFile$SharedPreference;

    return-void
.end method
