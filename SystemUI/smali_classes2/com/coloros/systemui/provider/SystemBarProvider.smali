.class public Lcom/coloros/systemui/provider/SystemBarProvider;
.super Landroid/content/ContentProvider;
.source "SystemBarProvider.java"


# static fields
.field private static final GESTURE_EXCLUSION_NAME:Ljava/lang/String; = "gesture_exclusion"

.field private static final GESTURE_EXCLUSION_TYPE:I = 0x0

.field private static final NAVIGATION_BAR_COLOR_NAME:Ljava/lang/String; = "navigationbar"

.field private static final NAVIGATION_BAR_COLOR_TYPE:I = 0x1

.field private static final PROVIDER_NAME:Ljava/lang/String; = "com.oppo.systemui"

.field private static final TAG:Ljava/lang/String; = "SystemBarProvider"

.field private static final mUriMatcher:Landroid/content/UriMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 44
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/coloros/systemui/provider/SystemBarProvider;->mUriMatcher:Landroid/content/UriMatcher;

    .line 46
    sget-object v0, Lcom/coloros/systemui/provider/SystemBarProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.oppo.systemui"

    const-string v2, "gesture_exclusion"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    sget-object v0, Lcom/coloros/systemui/provider/SystemBarProvider;->mUriMatcher:Landroid/content/UriMatcher;

    const-string v2, "navigationbar"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 69
    sget-object p0, Lcom/coloros/systemui/provider/SystemBarProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "vnd.android.cursor.dir/oppo.systemui"

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 58
    sget-object p2, Lcom/coloros/systemui/provider/SystemBarProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p2

    if-nez p2, :cond_0

    .line 59
    new-instance p1, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;

    invoke-virtual {p0}, Lcom/coloros/systemui/provider/SystemBarProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/coloros/systemui/provider/Cursor/GestureExclusionCursor;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 60
    :cond_0
    sget-object p2, Lcom/coloros/systemui/provider/SystemBarProvider;->mUriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 61
    new-instance p1, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;

    invoke-virtual {p0}, Lcom/coloros/systemui/provider/SystemBarProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/coloros/systemui/provider/Cursor/NavigationBarColorCursor;-><init>(Landroid/content/Context;)V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 p0, 0x0

    return p0
.end method
