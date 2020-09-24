.class public Lcom/google/android/setupcompat/b/b;
.super Ljava/lang/Object;
.source "PartnerConfigHelper.java"


# static fields
.field private static final c:Ljava/lang/String; = "b"

.field private static d:Lcom/google/android/setupcompat/b/b;


# instance fields
.field a:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final b:Ljava/util/EnumMap;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lcom/google/android/setupcompat/b/a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "getOverlayConfig"

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 49
    iput-object v1, p0, Lcom/google/android/setupcompat/b/b;->a:Landroid/os/Bundle;

    .line 51
    new-instance v2, Ljava/util/EnumMap;

    const-class v3, Lcom/google/android/setupcompat/b/a;

    invoke-direct {v2, v3}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v2, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    .line 1297
    iget-object v2, p0, Lcom/google/android/setupcompat/b/b;->a:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1299
    :cond_0
    :try_start_0
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v3, "content"

    .line 1301
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "com.google.android.setupwizard.partner"

    .line 1302
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1303
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1304
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1307
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1308
    invoke-virtual {p1, v2, v0, v1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/setupcompat/b/b;->a:Landroid/os/Bundle;

    .line 1310
    iget-object p1, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-virtual {p1}, Ljava/util/EnumMap;->clear()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1312
    :catch_0
    sget-object p1, Lcom/google/android/setupcompat/b/b;->c:Ljava/lang/String;

    const-string v0, "Fail to get config from suw provider"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 319
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 320
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/google/android/setupcompat/b/b;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/google/android/setupcompat/b/b;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/google/android/setupcompat/b/b;->d:Lcom/google/android/setupcompat/b/b;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lcom/google/android/setupcompat/b/b;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/b/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/google/android/setupcompat/b/b;->d:Lcom/google/android/setupcompat/b/b;

    .line 58
    :cond_0
    sget-object p0, Lcom/google/android/setupcompat/b/b;->d:Lcom/google/android/setupcompat/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Ljava/lang/String;)Lcom/google/android/setupcompat/b/c;
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/google/android/setupcompat/b/b;->a:Landroid/os/Bundle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 327
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/b/c;->a(Landroid/os/Bundle;)Lcom/google/android/setupcompat/b/c;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)I
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .line 2157
    iget v0, p2, Lcom/google/android/setupcompat/b/a;->I:I

    .line 84
    sget v1, Lcom/google/android/setupcompat/b/a$a;->b:I

    if-ne v0, v1, :cond_2

    .line 88
    iget-object v0, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object p1, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 2161
    :try_start_0
    iget-object v1, p2, Lcom/google/android/setupcompat/b/a;->H:Ljava/lang/String;

    .line 95
    invoke-direct {p0, v1}, Lcom/google/android/setupcompat/b/b;->a(Ljava/lang/String;)Lcom/google/android/setupcompat/b/c;

    move-result-object v1

    .line 3063
    iget-object v2, v1, Lcom/google/android/setupcompat/b/c;->a:Ljava/lang/String;

    .line 96
    invoke-static {p1, v2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 97
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_1

    .line 3071
    iget v1, v1, Lcom/google/android/setupcompat/b/c;->b:I

    const/4 v2, 0x0

    .line 98
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    goto :goto_0

    .line 4071
    :cond_1
    iget v1, v1, Lcom/google/android/setupcompat/b/c;->b:I

    .line 100
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    :goto_0
    move v0, p1

    .line 102
    iget-object p1, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0

    .line 85
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a color resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/android/setupcompat/b/b;->a:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4157
    iget v0, p2, Lcom/google/android/setupcompat/b/a;->I:I

    .line 119
    sget v1, Lcom/google/android/setupcompat/b/a$a;->c:I

    if-ne v0, v1, :cond_3

    .line 123
    iget-object v0, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object p1, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 4161
    :try_start_0
    iget-object v1, p2, Lcom/google/android/setupcompat/b/a;->H:Ljava/lang/String;

    .line 129
    invoke-direct {p0, v1}, Lcom/google/android/setupcompat/b/b;->a(Ljava/lang/String;)Lcom/google/android/setupcompat/b/c;

    move-result-object v1

    .line 5063
    iget-object v2, v1, Lcom/google/android/setupcompat/b/c;->a:Ljava/lang/String;

    .line 130
    invoke-static {p1, v2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 133
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 5071
    iget v3, v1, Lcom/google/android/setupcompat/b/c;->b:I

    const/4 v4, 0x1

    .line 134
    invoke-virtual {p1, v3, v2, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 135
    iget v3, v2, Landroid/util/TypedValue;->type:I

    if-ne v3, v4, :cond_1

    iget v2, v2, Landroid/util/TypedValue;->data:I

    if-nez v2, :cond_1

    return-object v0

    .line 139
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 6071
    iget v1, v1, Lcom/google/android/setupcompat/b/c;->b:I

    .line 140
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 7071
    :cond_2
    iget v1, v1, Lcom/google/android/setupcompat/b/c;->b:I

    .line 142
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    move-object v0, p1

    .line 144
    iget-object p1, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0

    .line 120
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a drawable resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 7157
    iget v0, p2, Lcom/google/android/setupcompat/b/a;->I:I

    .line 163
    sget v1, Lcom/google/android/setupcompat/b/a$a;->d:I

    if-ne v0, v1, :cond_1

    .line 167
    iget-object v0, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object p1, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 7161
    :try_start_0
    iget-object v1, p2, Lcom/google/android/setupcompat/b/a;->H:Ljava/lang/String;

    .line 173
    invoke-direct {p0, v1}, Lcom/google/android/setupcompat/b/b;->a(Ljava/lang/String;)Lcom/google/android/setupcompat/b/c;

    move-result-object v1

    .line 8063
    iget-object v2, v1, Lcom/google/android/setupcompat/b/c;->a:Ljava/lang/String;

    .line 174
    invoke-static {p1, v2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 8071
    iget v1, v1, Lcom/google/android/setupcompat/b/c;->b:I

    .line 175
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object p1, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0

    .line 164
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a string resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8157
    iget v0, p2, Lcom/google/android/setupcompat/b/a;->I:I

    .line 194
    sget v1, Lcom/google/android/setupcompat/b/a$a;->a:I

    if-ne v0, v1, :cond_1

    .line 198
    iget-object v0, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object p1, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 8161
    :try_start_0
    iget-object v1, p2, Lcom/google/android/setupcompat/b/a;->H:Ljava/lang/String;

    .line 204
    invoke-direct {p0, v1}, Lcom/google/android/setupcompat/b/b;->a(Ljava/lang/String;)Lcom/google/android/setupcompat/b/c;

    move-result-object v1

    .line 9063
    iget-object v2, v1, Lcom/google/android/setupcompat/b/c;->a:Ljava/lang/String;

    .line 205
    invoke-static {p1, v2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 9071
    iget v1, v1, Lcom/google/android/setupcompat/b/c;->b:I

    .line 206
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 207
    iget-object p1, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0

    .line 195
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a bool resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)F
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 221
    invoke-virtual {p0, p1, p2}, Lcom/google/android/setupcompat/b/b;->f(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)F

    move-result p1

    return p1
.end method

.method public final f(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)F
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9157
    iget v0, p2, Lcom/google/android/setupcompat/b/a;->I:I

    .line 235
    sget v1, Lcom/google/android/setupcompat/b/a$a;->e:I

    if-ne v0, v1, :cond_1

    .line 239
    iget-object v0, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object p1, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 9161
    :try_start_0
    iget-object v1, p2, Lcom/google/android/setupcompat/b/a;->H:Ljava/lang/String;

    .line 245
    invoke-direct {p0, v1}, Lcom/google/android/setupcompat/b/b;->a(Ljava/lang/String;)Lcom/google/android/setupcompat/b/c;

    move-result-object v1

    .line 10063
    iget-object v2, v1, Lcom/google/android/setupcompat/b/c;->a:Ljava/lang/String;

    .line 246
    invoke-static {p1, v2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 10071
    iget v1, v1, Lcom/google/android/setupcompat/b/c;->b:I

    .line 247
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 248
    iget-object p1, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0

    .line 236
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a dimension resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Landroid/content/Context;Lcom/google/android/setupcompat/b/a;)F
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 10157
    iget v0, p2, Lcom/google/android/setupcompat/b/a;->I:I

    .line 276
    sget v1, Lcom/google/android/setupcompat/b/a$a;->f:I

    if-ne v0, v1, :cond_1

    .line 280
    iget-object v0, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-virtual {v0, p2}, Ljava/util/EnumMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object p1, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-virtual {p1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 10161
    :try_start_0
    iget-object v1, p2, Lcom/google/android/setupcompat/b/a;->H:Ljava/lang/String;

    .line 286
    invoke-direct {p0, v1}, Lcom/google/android/setupcompat/b/b;->a(Ljava/lang/String;)Lcom/google/android/setupcompat/b/c;

    move-result-object v1

    .line 11063
    iget-object v2, v1, Lcom/google/android/setupcompat/b/c;->a:Ljava/lang/String;

    .line 287
    invoke-static {p1, v2}, Lcom/google/android/setupcompat/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    .line 11071
    iget v1, v1, Lcom/google/android/setupcompat/b/c;->b:I

    const/4 v2, 0x1

    .line 288
    invoke-virtual {p1, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    .line 289
    iget-object p1, p0, Lcom/google/android/setupcompat/b/b;->b:Ljava/util/EnumMap;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0

    .line 277
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Not a fraction resource"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
