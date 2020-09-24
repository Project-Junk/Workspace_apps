.class public Lcom/android/settings/i;
.super Landroid/app/Activity;
.source "SettingsTutorialDialogWrapperActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/i;->finish()V

    return-void
.end method

.method public static synthetic lambda$pi3nCBl8Or1RZS2i4cjgBL7M3og(Lcom/android/settings/i;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/i;->a(Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1039
    new-instance p1, Lcom/android/settings/-$$Lambda$i$pi3nCBl8Or1RZS2i4cjgBL7M3og;

    invoke-direct {p1, p0}, Lcom/android/settings/-$$Lambda$i$pi3nCBl8Or1RZS2i4cjgBL7M3og;-><init>(Lcom/android/settings/i;)V

    .line 1040
    invoke-static {p0, p1}, Lcom/android/settings/accessibility/a;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
