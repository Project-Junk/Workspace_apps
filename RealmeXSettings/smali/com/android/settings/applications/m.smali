.class public final Lcom/android/settings/applications/m;
.super Ljava/lang/Object;
.source "AppStorageSizesController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/m$a;
    }
.end annotation


# instance fields
.field a:Lcom/android/settingslib/applications/f$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field b:Z

.field c:Z

.field d:Z

.field private final e:Landroidx/preference/Preference;

.field private final f:Landroidx/preference/Preference;

.field private final g:Landroidx/preference/Preference;

.field private final h:Landroidx/preference/Preference;

.field private final i:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private final j:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private k:J

.field private l:J

.field private m:J

.field private n:J


# direct methods
.method private constructor <init>(Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;II)V
    .locals 2
    .param p5    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 46
    iput-wide v0, p0, Lcom/android/settings/applications/m;->k:J

    .line 47
    iput-wide v0, p0, Lcom/android/settings/applications/m;->l:J

    .line 48
    iput-wide v0, p0, Lcom/android/settings/applications/m;->m:J

    .line 49
    iput-wide v0, p0, Lcom/android/settings/applications/m;->n:J

    .line 53
    iput-object p1, p0, Lcom/android/settings/applications/m;->e:Landroidx/preference/Preference;

    .line 54
    iput-object p2, p0, Lcom/android/settings/applications/m;->f:Landroidx/preference/Preference;

    .line 55
    iput-object p3, p0, Lcom/android/settings/applications/m;->g:Landroidx/preference/Preference;

    .line 56
    iput-object p4, p0, Lcom/android/settings/applications/m;->h:Landroidx/preference/Preference;

    .line 57
    iput p5, p0, Lcom/android/settings/applications/m;->i:I

    .line 58
    iput p6, p0, Lcom/android/settings/applications/m;->j:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;IIB)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p6}, Lcom/android/settings/applications/m;-><init>(Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;II)V

    return-void
.end method

.method private static a(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1

    .line 135
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 139
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 9

    .line 66
    iget-object v0, p0, Lcom/android/settings/applications/m;->a:Lcom/android/settingslib/applications/f$a;

    if-nez v0, :cond_1

    .line 67
    iget-boolean p1, p0, Lcom/android/settings/applications/m;->b:Z

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/settings/applications/m;->j:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/settings/applications/m;->i:I

    .line 69
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/m;->f:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/m;->g:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/applications/m;->h:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/applications/m;->e:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    .line 74
    :cond_1
    invoke-interface {v0}, Lcom/android/settingslib/applications/f$a;->a()J

    move-result-wide v0

    .line 75
    iget-boolean v2, p0, Lcom/android/settings/applications/m;->d:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    move-wide v5, v3

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/m;->a:Lcom/android/settingslib/applications/f$a;

    .line 76
    invoke-interface {v2}, Lcom/android/settingslib/applications/f$a;->b()J

    move-result-wide v5

    iget-object v2, p0, Lcom/android/settings/applications/m;->a:Lcom/android/settingslib/applications/f$a;

    invoke-interface {v2}, Lcom/android/settingslib/applications/f$a;->c()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 77
    :goto_1
    iget-wide v7, p0, Lcom/android/settings/applications/m;->k:J

    cmp-long v2, v7, v0

    if-eqz v2, :cond_3

    .line 78
    iput-wide v0, p0, Lcom/android/settings/applications/m;->k:J

    .line 79
    iget-object v2, p0, Lcom/android/settings/applications/m;->f:Landroidx/preference/Preference;

    invoke-static {p1, v0, v1}, Lcom/android/settings/applications/m;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 81
    :cond_3
    iget-wide v7, p0, Lcom/android/settings/applications/m;->l:J

    cmp-long v2, v7, v5

    if-eqz v2, :cond_4

    .line 82
    iput-wide v5, p0, Lcom/android/settings/applications/m;->l:J

    .line 83
    iget-object v2, p0, Lcom/android/settings/applications/m;->g:Landroidx/preference/Preference;

    invoke-static {p1, v5, v6}, Lcom/android/settings/applications/m;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    :cond_4
    iget-boolean v2, p0, Lcom/android/settings/applications/m;->d:Z

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/applications/m;->c:Z

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/settings/applications/m;->a:Lcom/android/settingslib/applications/f$a;

    invoke-interface {v2}, Lcom/android/settingslib/applications/f$a;->c()J

    move-result-wide v3

    .line 86
    :cond_6
    :goto_2
    iget-wide v7, p0, Lcom/android/settings/applications/m;->m:J

    cmp-long v2, v7, v3

    if-eqz v2, :cond_7

    .line 87
    iput-wide v3, p0, Lcom/android/settings/applications/m;->m:J

    .line 88
    iget-object v2, p0, Lcom/android/settings/applications/m;->h:Landroidx/preference/Preference;

    invoke-static {p1, v3, v4}, Lcom/android/settings/applications/m;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    add-long/2addr v0, v5

    add-long/2addr v0, v3

    .line 92
    iget-wide v2, p0, Lcom/android/settings/applications/m;->n:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_8

    .line 93
    iput-wide v0, p0, Lcom/android/settings/applications/m;->n:J

    .line 94
    iget-object v2, p0, Lcom/android/settings/applications/m;->e:Landroidx/preference/Preference;

    invoke-static {p1, v0, v1}, Lcom/android/settings/applications/m;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_8
    return-void
.end method
