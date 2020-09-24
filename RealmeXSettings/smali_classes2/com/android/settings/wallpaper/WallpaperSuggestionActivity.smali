.class public Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;
.super Lcom/android/settings/wallpaper/b;
.source "WallpaperSuggestionActivity.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity$1;

    invoke-direct {v0}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity$1;-><init>()V

    sput-object v0, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/wallpaper/b;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 48
    invoke-static {p0}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->b(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "wallpaper"

    .line 51
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/WallpaperManager;

    .line 53
    invoke-virtual {p0, v1}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result p0

    if-lez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected final a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "com.android.launcher3.WALLPAPER_FLAVOR"

    const-string v1, "focus_wallpaper"

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method
