.class public final synthetic Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$mwX6v6Yeq-00latqKXEFJPzhUTY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;

.field private final synthetic f$1:Lcom/android/settings/accounts/a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;Lcom/android/settings/accounts/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$mwX6v6Yeq-00latqKXEFJPzhUTY;->f$0:Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$mwX6v6Yeq-00latqKXEFJPzhUTY;->f$1:Lcom/android/settings/accounts/a;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$mwX6v6Yeq-00latqKXEFJPzhUTY;->f$0:Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$mwX6v6Yeq-00latqKXEFJPzhUTY;->f$1:Lcom/android/settings/accounts/a;

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->lambda$displayPreference$0$BrandedAccountPreferenceController(Lcom/android/settings/accounts/a;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
