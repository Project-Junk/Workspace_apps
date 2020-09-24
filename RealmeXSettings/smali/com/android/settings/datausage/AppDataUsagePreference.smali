.class public Lcom/android/settings/datausage/AppDataUsagePreference;
.super Lcom/android/settingslib/widget/apppreference/AppPreference;
.source "AppDataUsagePreference.java"


# instance fields
.field final a:Lcom/android/settingslib/a;

.field private final b:I

.field private c:Lcom/android/settingslib/net/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/a;ILcom/android/settingslib/net/g;)V
    .locals 4

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->a:Lcom/android/settingslib/a;

    .line 39
    iput p3, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->b:I

    .line 41
    iget-boolean p3, p2, Lcom/android/settingslib/a;->b:Z

    if-eqz p3, :cond_0

    iget-wide v0, p2, Lcom/android/settingslib/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-gtz p3, :cond_0

    const p1, 0x7f1206bd

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsagePreference;->setSummary(I)V

    goto :goto_0

    .line 44
    :cond_0
    iget-wide v0, p2, Lcom/android/settingslib/a;->e:J

    invoke-static {p1, v0, v1}, Lcom/android/settings/datausage/f;->a(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsagePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 46
    :goto_0
    iget p1, p2, Lcom/android/settingslib/a;->a:I

    const/4 p2, 0x0

    invoke-virtual {p4, p1, p2}, Lcom/android/settingslib/net/g;->a(IZ)Lcom/android/settingslib/net/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->c:Lcom/android/settingslib/net/f;

    .line 47
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->c:Lcom/android/settingslib/net/f;

    if-eqz p1, :cond_1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->a()V

    return-void

    .line 50
    :cond_1
    new-instance p1, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$sLyIVBjchrAN4YmW-Ia8TWqTdEo;

    invoke-direct {p1, p0, p4}, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$sLyIVBjchrAN4YmW-Ia8TWqTdEo;-><init>(Lcom/android/settings/datausage/AppDataUsagePreference;Lcom/android/settingslib/net/g;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/d;->a(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private a()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->c:Lcom/android/settingslib/net/f;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, v0, Lcom/android/settingslib/net/f;->e:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->c:Lcom/android/settingslib/net/f;

    iget-object v0, v0, Lcom/android/settingslib/net/f;->a:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 77
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/AppDataUsagePreference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic a(Lcom/android/settingslib/net/g;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->a:Lcom/android/settingslib/a;

    iget v0, v0, Lcom/android/settingslib/a;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/net/g;->a(IZ)Lcom/android/settingslib/net/f;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->c:Lcom/android/settingslib/net/f;

    .line 52
    new-instance p1, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$wzuXymaePryCrIE-sm8caqCWAx4;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/-$$Lambda$AppDataUsagePreference$wzuXymaePryCrIE-sm8caqCWAx4;-><init>(Lcom/android/settings/datausage/AppDataUsagePreference;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/d;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic b()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->a()V

    return-void
.end method

.method public static synthetic lambda$sLyIVBjchrAN4YmW-Ia8TWqTdEo(Lcom/android/settings/datausage/AppDataUsagePreference;Lcom/android/settingslib/net/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/AppDataUsagePreference;->a(Lcom/android/settingslib/net/g;)V

    return-void
.end method

.method public static synthetic lambda$wzuXymaePryCrIE-sm8caqCWAx4(Lcom/android/settings/datausage/AppDataUsagePreference;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsagePreference;->b()V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 59
    invoke-super {p0, p1}, Lcom/android/settingslib/widget/apppreference/AppPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x102000d

    .line 60
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    .line 63
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->a:Lcom/android/settingslib/a;

    iget-boolean v0, v0, Lcom/android/settingslib/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->a:Lcom/android/settingslib/a;

    iget-wide v0, v0, Lcom/android/settingslib/a;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/16 v0, 0x8

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 68
    :goto_0
    iget v0, p0, Lcom/android/settings/datausage/AppDataUsagePreference;->b:I

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method
