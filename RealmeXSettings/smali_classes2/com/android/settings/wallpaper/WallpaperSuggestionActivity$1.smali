.class final Lcom/android/settings/wallpaper/WallpaperSuggestionActivity$1;
.super Lcom/android/settings/search/a;
.source "WallpaperSuggestionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/e;",
            ">;"
        }
    .end annotation

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    new-instance v0, Lcom/android/settings/display/WallpaperPreferenceController;

    const-string v1, "dummy key"

    invoke-direct {v0, p1, v1}, Lcom/android/settings/display/WallpaperPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    new-instance v1, Lcom/android/settings/search/e;

    invoke-direct {v1, p1}, Lcom/android/settings/search/e;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {v0}, Lcom/android/settings/display/WallpaperPreferenceController;->getTitle()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    .line 68
    iget-object p1, v1, Lcom/android/settings/search/e;->a:Ljava/lang/String;

    iput-object p1, v1, Lcom/android/settings/search/e;->f:Ljava/lang/String;

    .line 69
    invoke-virtual {v0}, Lcom/android/settings/display/WallpaperPreferenceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/settings/search/e;->intentTargetPackage:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/search/e;->intentTargetClass:Ljava/lang/String;

    const-string p1, "android.intent.action.MAIN"

    .line 72
    iput-object p1, v1, Lcom/android/settings/search/e;->intentAction:Ljava/lang/String;

    const-string p1, "wallpaper_type"

    .line 73
    iput-object p1, v1, Lcom/android/settings/search/e;->key:Ljava/lang/String;

    .line 74
    invoke-virtual {v0}, Lcom/android/settings/display/WallpaperPreferenceController;->getKeywords()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/search/e;->e:Ljava/lang/String;

    .line 75
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method
