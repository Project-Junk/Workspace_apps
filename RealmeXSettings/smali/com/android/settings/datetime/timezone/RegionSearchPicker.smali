.class public Lcom/android/settings/datetime/timezone/RegionSearchPicker;
.super Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;
.source "RegionSearchPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datetime/timezone/RegionSearchPicker$a;,
        Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;
    }
.end annotation


# instance fields
.field private a:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter<",
            "Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/android/settings/datetime/timezone/model/b;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const v1, 0x7f12071c

    const v2, 0x7f12071a

    .line 52
    invoke-direct {p0, v1, v2, v0, v0}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;-><init>(IIZZ)V

    return-void
.end method

.method private a(Ljava/util/Set;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/Collator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/Collator;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Lcom/android/settings/datetime/timezone/RegionSearchPicker$a;

    invoke-direct {v2, v0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker$a;-><init>(Landroid/icu/text/Collator;)V

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->b()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/LocaleDisplayNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/LocaleDisplayNames;

    move-result-object v0

    .line 118
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v4}, Landroid/icu/text/LocaleDisplayNames;->regionDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    new-instance v6, Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;

    const-wide/16 v7, 0x1

    add-long/2addr v7, v2

    invoke-direct {v6, v2, v3, v4, v5}, Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-wide v2, v7

    goto :goto_0

    .line 122
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method private a(Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;)V
    .locals 4

    .line 1144
    iget-object p1, p1, Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;->a:Ljava/lang/String;

    .line 71
    iget-object v0, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->b:Lcom/android/settings/datetime/timezone/model/b;

    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/model/b;->b(Ljava/lang/String;)Lcom/android/settings/datetime/timezone/model/a;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2059
    iget-object v3, v0, Lcom/android/settings/datetime/timezone/model/a;->a:Ljava/util/List;

    .line 74
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 3059
    :cond_0
    iget-object v0, v0, Lcom/android/settings/datetime/timezone/model/a;->a:Ljava/util/List;

    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 84
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings.datetime.timezone.result_region_id"

    .line 85
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 86
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "com.android.settings.datetime.timezone.result_time_zone_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    .line 92
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.android.settings.datetime.timezone.region_id"

    .line 93
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance p1, Lcom/android/settings/core/f;

    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/datetime/timezone/RegionZonePicker;

    .line 95
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 96
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 98
    invoke-virtual {p1, p0, v3}, Lcom/android/settings/core/f;->a(Landroidx/fragment/app/Fragment;I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void

    .line 75
    :cond_2
    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Region has no time zones: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RegionSearchPicker"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 77
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic lambda$A0OToP_KPZ7MGSboYM5-TeFbP3o(Lcom/android/settings/datetime/timezone/RegionSearchPicker;Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->a(Lcom/android/settings/datetime/timezone/RegionSearchPicker$b;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/android/settings/datetime/timezone/model/b;)Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;
    .locals 7

    .line 62
    iput-object p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->b:Lcom/android/settings/datetime/timezone/model/b;

    .line 63
    new-instance v6, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    .line 1062
    iget-object p1, p1, Lcom/android/settings/datetime/timezone/model/b;->a:Ljava/util/Set;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->a(Ljava/util/Set;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/android/settings/datetime/timezone/-$$Lambda$RegionSearchPicker$A0OToP_KPZ7MGSboYM5-TeFbP3o;

    invoke-direct {v2, p0}, Lcom/android/settings/datetime/timezone/-$$Lambda$RegionSearchPicker$A0OToP_KPZ7MGSboYM5-TeFbP3o;-><init>(Lcom/android/settings/datetime/timezone/RegionSearchPicker;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->b()Ljava/util/Locale;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;-><init>(Ljava/util/List;Lcom/android/settings/datetime/timezone/BaseTimeZonePicker$a;Ljava/util/Locale;ZLjava/lang/CharSequence;)V

    iput-object v6, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->a:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    .line 66
    iget-object p1, p0, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->a:Lcom/android/settings/datetime/timezone/BaseTimeZoneAdapter;

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x54b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Landroidx/fragment/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datetime/timezone/RegionSearchPicker;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_1
    return-void
.end method
