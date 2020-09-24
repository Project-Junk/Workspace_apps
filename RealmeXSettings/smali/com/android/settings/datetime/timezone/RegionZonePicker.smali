.class public Lcom/android/settings/datetime/timezone/RegionZonePicker;
.super Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;
.source "RegionZonePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/RegionZonePicker$a;
    }
.end annotation


# instance fields
.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const v0, 0x7f120721

    const/4 v1, 0x1

    .line 53
    invoke-direct {p0, v0, v1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/android/settings/datetime/timezone/c;)Landroid/content/Intent;
    .locals 2

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->a(Lcom/android/settings/datetime/timezone/c;)Landroid/content/Intent;

    move-result-object p1

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.android.settings.datetime.timezone.region_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings.datetime.timezone.result_region_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object p1
.end method

.method protected final a()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lcom/android/settings/datetime/timezone/model/b;)Ljava/util/List;
    .locals 5
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

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "RegionZoneSearchPicker"

    if-nez v0, :cond_0

    const-string p1, "getArguments() == null"

    .line 89
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 91
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.android.settings.datetime.timezone.region_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Lcom/android/settings/datetime/timezone/model/b;->b(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/a;

    move-result-object p1

    if-nez p1, :cond_1

    .line 98
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "region id is not valid: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    .line 100
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 1059
    :cond_1
    iget-object p1, p1, Lcom/android/settings/datetime/timezone/model/a;->a:Ljava/util/List;

    .line 1117
    new-instance v0, Lcom/android/settings/datetime/timezone/c$b;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->b()Ljava/util/Locale;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/android/settings/datetime/timezone/c$b;-><init>(Ljava/util/Locale;Ljava/util/Date;)V

    .line 1119
    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Lcom/android/settings/datetime/timezone/RegionZonePicker$a;

    .line 1120
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->b()Ljava/util/Locale;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/text/Collator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-direct {v2, v3, v4}, Lcom/android/settings/datetime/timezone/RegionZonePicker$a;-><init>(Landroid/icu/text/Collator;Ljava/util/Date;)V

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 1123
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1124
    invoke-static {v2}, Landroid/icu/util/TimeZone;->getFrozenTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v2

    .line 1126
    invoke-virtual {v2}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Etc/Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1129
    invoke-virtual {v0, v2}, Lcom/android/settings/datetime/timezone/c$b;->a(Landroid/icu/util/TimeZone;)Lcom/android/settings/datetime/timezone/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1131
    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x54c

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZoneInfoPicker;->onCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->b()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionZonePicker;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "com.android.settings.datetime.timezone.region_id"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {p1, v0}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/android/settings/datetime/timezone/RegionZonePicker;->b:Ljava/lang/String;

    return-void
.end method
