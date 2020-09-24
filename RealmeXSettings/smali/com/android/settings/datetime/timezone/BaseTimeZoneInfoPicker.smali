.class public abstract Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;
.super Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;
.source "BaseTimeZoneInfoPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;,
        Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;
    }
.end annotation


# instance fields
.field protected a:Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;


# direct methods
.method protected constructor <init>(IZ)V
    .locals 2

    const v0, 0x7f121371

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;-><init>(IIZZ)V

    return-void
.end method

.method private a(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;)V
    .locals 2

    .line 1099
    iget-object p1, p1, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;->a:Lcom/android/settings/datetime/timezone/c;

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->a(Lcom/android/settings/datetime/timezone/c;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void
.end method

.method public static synthetic lambda$cX-Oq-eDNHSTmgQoSv7NMSztpKk(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->a(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$a;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/android/settings/datetime/timezone/c;)Landroid/content/Intent;
    .locals 2

    .line 70
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2052
    iget-object p1, p1, Lcom/android/settings/datetime/timezone/c;->a:Ljava/lang/String;

    const-string v1, "com.android.settings.datetime.timezone.result_time_zone_id"

    .line 70
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Lcom/android/settings/datetime/timezone/model/b;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
    .locals 7

    .line 51
    new-instance v6, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->b(Lcom/android/settings/datetime/timezone/model/b;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/android/settings/datetime/timezone/-$$Lambda$BaseTimeZoneInfoPicker$cX-Oq-eDNHSTmgQoSv7NMSztpKk;

    invoke-direct {v3, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$BaseTimeZoneInfoPicker$cX-Oq-eDNHSTmgQoSv7NMSztpKk;-><init>(Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;)V

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->b()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->a()Ljava/lang/CharSequence;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a;Ljava/util/Locale;Ljava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->a:Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;

    .line 53
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->a:Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker$ZoneAdapter;

    return-object p1
.end method

.method protected a()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract b(Lcom/android/settings/datetime/timezone/model/b;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/datetime/timezone/model/b;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/c;",
            ">;"
        }
    .end annotation
.end method
