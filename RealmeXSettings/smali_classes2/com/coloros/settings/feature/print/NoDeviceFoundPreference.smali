.class public Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;
.super Landroidx/preference/Preference;
.source "NoDeviceFoundPreference.java"


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 27
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;->a:Landroid/os/Handler;

    return-void
.end method

.method private synthetic b(I)V
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;->setSummary(I)V

    return-void
.end method

.method public static synthetic lambda$G5rIbW5ascmFm81N-gB7CoFMZT8(Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;->b(I)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;->a:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/settings/feature/print/-$$Lambda$NoDeviceFoundPreference$G5rIbW5ascmFm81N-gB7CoFMZT8;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/feature/print/-$$Lambda$NoDeviceFoundPreference$G5rIbW5ascmFm81N-gB7CoFMZT8;-><init>(Lcom/coloros/settings/feature/print/NoDeviceFoundPreference;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
