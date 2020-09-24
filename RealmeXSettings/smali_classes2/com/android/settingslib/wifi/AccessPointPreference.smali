.class public Lcom/android/settingslib/wifi/AccessPointPreference;
.super Landroidx/preference/Preference;
.source "AccessPointPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/AccessPointPreference$a;,
        Lcom/android/settingslib/wifi/AccessPointPreference$b;
    }
.end annotation


# static fields
.field private static final a:[I

.field private static final d:[I

.field private static final e:[I

.field private static final f:[I


# instance fields
.field protected b:Z

.field public c:Lcom/android/settingslib/wifi/a;

.field private final g:Landroid/graphics/drawable/StateListDrawable;

.field private final h:I

.field private final i:Lcom/android/settingslib/wifi/AccessPointPreference$b;

.field private final j:Lcom/android/settingslib/wifi/AccessPointPreference$a;

.field private k:Landroid/widget/TextView;

.field private l:Z

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:I

.field private o:I

.field private p:Z

.field private q:Z

.field private r:Ljava/lang/CharSequence;

.field private s:I

.field private t:I

.field private final u:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    .line 46
    new-array v1, v0, [I

    sget v2, Lcom/android/settingslib/e$b;->state_encrypted:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->a:[I

    .line 50
    new-array v1, v0, [I

    sget v2, Lcom/android/settingslib/e$b;->state_metered:I

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->d:[I

    .line 54
    new-array v1, v0, [I

    sget v2, Lcom/android/settingslib/e$b;->wifi_friction:I

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->e:[I

    const/4 v1, 0x5

    .line 58
    new-array v1, v1, [I

    sget v2, Lcom/android/settingslib/e$h;->accessibility_no_wifi:I

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/e$h;->accessibility_wifi_one_bar:I

    aput v2, v1, v0

    sget v0, Lcom/android/settingslib/e$h;->accessibility_wifi_two_bars:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sget v0, Lcom/android/settingslib/e$h;->accessibility_wifi_three_bars:I

    const/4 v2, 0x3

    aput v0, v1, v2

    sget v0, Lcom/android/settingslib/e$h;->accessibility_wifi_signal_full:I

    const/4 v2, 0x4

    aput v0, v1, v2

    sput-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 98
    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 73
    iput-boolean p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->l:Z

    .line 82
    iput p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->t:I

    .line 323
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->u:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->g:Landroid/graphics/drawable/StateListDrawable;

    .line 100
    iput p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->h:I

    .line 101
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->i:Lcom/android/settingslib/wifi/AccessPointPreference$b;

    .line 102
    new-instance p2, Lcom/android/settingslib/wifi/AccessPointPreference$a;

    invoke-direct {p2, p1}, Lcom/android/settingslib/wifi/AccessPointPreference$a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->j:Lcom/android/settingslib/wifi/AccessPointPreference$a;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/a;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$b;)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 107
    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/a;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$b;IZ)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->b()V

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/wifi/a;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$b;IZ)V
    .locals 8

    .line 114
    invoke-static {p2}, Lcom/android/settingslib/wifi/AccessPointPreference;->a(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v6

    new-instance v7, Lcom/android/settingslib/wifi/AccessPointPreference$a;

    invoke-direct {v7, p2}, Lcom/android/settingslib/wifi/AccessPointPreference$a;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 113
    invoke-direct/range {v0 .. v7}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/a;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$b;IZLandroid/graphics/drawable/StateListDrawable;Lcom/android/settingslib/wifi/AccessPointPreference$a;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/settingslib/wifi/a;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$b;IZLandroid/graphics/drawable/StateListDrawable;Lcom/android/settingslib/wifi/AccessPointPreference$a;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 121
    invoke-direct {p0, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->l:Z

    .line 82
    iput v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->t:I

    .line 323
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/AccessPointPreference$1;-><init>(Lcom/android/settingslib/wifi/AccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->u:Ljava/lang/Runnable;

    .line 122
    sget v0, Lcom/android/settingslib/e$g;->preference_access_point:I

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setLayoutResource(I)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setWidgetLayoutResource(I)V

    .line 124
    iput-object p3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->i:Lcom/android/settingslib/wifi/AccessPointPreference$b;

    .line 125
    iput-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 126
    iput-boolean p5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->l:Z

    .line 127
    iget-object p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 2386
    iput-object p0, p1, Lcom/android/settingslib/wifi/a;->n:Ljava/lang/Object;

    const/4 p1, -0x1

    .line 128
    iput p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->n:I

    .line 129
    iput p4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->s:I

    .line 130
    iput-object p6, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->g:Landroid/graphics/drawable/StateListDrawable;

    .line 131
    iput-object p7, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->j:Lcom/android/settingslib/wifi/AccessPointPreference$a;

    .line 132
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settingslib/e$d;->wifi_preference_badge_padding:I

    .line 133
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->h:I

    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/graphics/drawable/StateListDrawable;
    .locals 2

    const/4 v0, 0x0

    .line 88
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget-object v1, Lcom/android/settingslib/wifi/AccessPointPreference;->e:[I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/StateListDrawable;

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 1

    .line 137
    sget v0, Lcom/android/settingslib/e$g;->access_point_friction_widget:I

    return v0
.end method

.method public b()V
    .locals 11

    .line 239
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 6289
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/a;->c()I

    move-result v1

    .line 242
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 6644
    iget v2, v2, Lcom/android/settingslib/wifi/a;->o:I

    .line 243
    iget-object v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 6990
    iget v3, v3, Lcom/android/settingslib/wifi/a;->h:I

    .line 244
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 6998
    iget-boolean v4, v4, Lcom/android/settingslib/wifi/a;->j:Z

    .line 245
    iget-object v5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 7994
    iget-boolean v5, v5, Lcom/android/settingslib/wifi/a;->i:Z

    .line 247
    iget v6, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->n:I

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v1, v6, :cond_0

    iget v6, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->t:I

    if-ne v2, v6, :cond_0

    iget v6, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->o:I

    if-ne v3, v6, :cond_0

    iget-boolean v6, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->q:Z

    if-ne v6, v4, :cond_0

    iget-boolean v6, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->p:Z

    if-eq v6, v5, :cond_4

    .line 252
    :cond_0
    iput v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->n:I

    .line 253
    iput v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->t:I

    .line 254
    iput v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->o:I

    .line 255
    iput-boolean v4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->q:Z

    .line 256
    iput-boolean v5, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->p:Z

    .line 257
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->n:I

    iget v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->o:I

    iget-boolean v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->q:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->p:Z

    if-eqz v3, :cond_1

    move v3, v7

    goto :goto_0

    :cond_1
    move v3, v8

    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 8185
    iget v4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->t:I

    const-string v5, "settings_wifi_speed_labels"

    .line 9031
    invoke-static {v0, v5, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 8187
    iget-object v4, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->j:Lcom/android/settingslib/wifi/AccessPointPreference$a;

    .line 9357
    iget-object v4, v4, Lcom/android/settingslib/wifi/AccessPointPreference$a;->a:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/l;->a(IIZ)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 8188
    iget-boolean v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->l:Z

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    const v2, 0x1010429

    .line 8189
    invoke-static {v0, v2}, Lcom/android/settingslib/l;->j(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 8190
    invoke-virtual {p0, v1}, Lcom/android/settingslib/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 10218
    :cond_2
    iget v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->s:I

    if-eqz v0, :cond_3

    .line 10219
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setIcon(I)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    .line 10221
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 258
    :goto_1
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->notifyChanged()V

    .line 10226
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 10764
    iget-object v0, v0, Lcom/android/settingslib/wifi/a;->f:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_6

    .line 10231
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->i:Lcom/android/settingslib/wifi/AccessPointPreference$b;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 11339
    iget-object v2, v1, Lcom/android/settingslib/wifi/AccessPointPreference$b;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_5

    .line 11341
    iget-object v2, v1, Lcom/android/settingslib/wifi/AccessPointPreference$b;->b:Landroid/content/pm/PackageManager;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v3, v8}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 11342
    iget-object v1, v1, Lcom/android/settingslib/wifi/AccessPointPreference$b;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 11345
    :cond_5
    iget-object v0, v1, Lcom/android/settingslib/wifi/AccessPointPreference$b;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 10231
    :goto_2
    iput-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->m:Landroid/graphics/drawable/Drawable;

    .line 263
    :cond_6
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->l:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/a;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 12187
    invoke-virtual {v0, v8}, Lcom/android/settingslib/wifi/a;->b(Z)Ljava/lang/String;

    move-result-object v0

    .line 266
    :goto_3
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 13014
    iget v1, v1, Lcom/android/settingslib/wifi/a;->e:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    .line 267
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WPA3(SAE) "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 268
    :cond_8
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 14014
    iget v1, v1, Lcom/android/settingslib/wifi/a;->e:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_9

    .line 269
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WPA3(OWE) "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    :cond_9
    :goto_4
    invoke-virtual {p0, v0}, Lcom/android/settingslib/wifi/AccessPointPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 14297
    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 14298
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    .line 14299
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x2

    const-string v6, ","

    const/4 v9, 0x3

    if-nez v4, :cond_a

    .line 14300
    new-array v4, v9, [Ljava/lang/CharSequence;

    aput-object v2, v4, v8

    aput-object v6, v4, v7

    aput-object v3, v4, v5

    invoke-static {v4}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 14302
    :cond_a
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/a;->c()I

    move-result v3

    if-ltz v3, :cond_b

    .line 14303
    sget-object v4, Lcom/android/settingslib/wifi/AccessPointPreference;->f:[I

    array-length v10, v4

    if-ge v3, v10, :cond_b

    .line 14304
    new-array v10, v9, [Ljava/lang/CharSequence;

    aput-object v2, v10, v8

    aput-object v6, v10, v7

    aget v2, v4, v3

    .line 14305
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v5

    .line 14304
    invoke-static {v10}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 14307
    :cond_b
    new-array v3, v9, [Ljava/lang/CharSequence;

    aput-object v2, v3, v8

    aput-object v6, v3, v7

    .line 15014
    iget v1, v1, Lcom/android/settingslib/wifi/a;->e:I

    if-nez v1, :cond_c

    .line 14308
    sget v1, Lcom/android/settingslib/e$h;->accessibility_wifi_security_type_none:I

    .line 14309
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_c
    sget v1, Lcom/android/settingslib/e$h;->accessibility_wifi_security_type_secured:I

    .line 14310
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    aput-object v0, v3, v5

    .line 14307
    invoke-static {v3}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 274
    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->r:Ljava/lang/CharSequence;

    return-void
.end method

.method public final c()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->u:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public notifyChanged()V
    .locals 2

    .line 279
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->c()V

    return-void

    .line 283
    :cond_0
    invoke-super {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    .line 146
    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 147
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 153
    iget v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->n:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_1
    const v0, 0x1020016

    .line 156
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->k:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 159
    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->m:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 160
    iget-object v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->k:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 162
    :cond_2
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->r:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 164
    sget v0, Lcom/android/settingslib/e$f;->friction_icon:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x4

    if-eqz v0, :cond_6

    .line 3203
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->g:Landroid/graphics/drawable/StateListDrawable;

    if-nez v2, :cond_3

    goto :goto_1

    .line 3206
    :cond_3
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 4014
    iget v2, v2, Lcom/android/settingslib/wifi/a;->e:I

    if-eqz v2, :cond_4

    .line 3206
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 5014
    iget v2, v2, Lcom/android/settingslib/wifi/a;->e:I

    if-eq v2, v1, :cond_4

    .line 3207
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    .line 6014
    iget v2, v2, Lcom/android/settingslib/wifi/a;->e:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_4

    .line 3209
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->g:Landroid/graphics/drawable/StateListDrawable;

    sget-object v3, Lcom/android/settingslib/wifi/AccessPointPreference;->a:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    goto :goto_0

    .line 3210
    :cond_4
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->c:Lcom/android/settingslib/wifi/a;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/a;->e()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3211
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->g:Landroid/graphics/drawable/StateListDrawable;

    sget-object v3, Lcom/android/settingslib/wifi/AccessPointPreference;->d:[I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    .line 3213
    :cond_5
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->g:Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 3214
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 167
    :cond_6
    :goto_1
    sget v0, Lcom/android/settingslib/e$f;->two_target_divider:I

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 6172
    iget-boolean v0, p0, Lcom/android/settingslib/wifi/AccessPointPreference;->b:Z

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    .line 168
    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
