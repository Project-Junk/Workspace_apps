.class final Lcom/android/settings/FallbackHome$1;
.super Ljava/lang/Object;
.source "FallbackHome.java"

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FallbackHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/FallbackHome;


# direct methods
.method constructor <init>(Lcom/android/settings/FallbackHome;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/FallbackHome$1;->a:Lcom/android/settings/FallbackHome;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onColorsChanged(Landroid/app/WallpaperColors;I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 72
    iget-object p2, p0, Lcom/android/settings/FallbackHome$1;->a:Lcom/android/settings/FallbackHome;

    invoke-virtual {p2}, Lcom/android/settings/FallbackHome;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/FallbackHome;->a(Landroid/app/WallpaperColors;I)I

    move-result p1

    .line 73
    invoke-virtual {p2, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/FallbackHome$1;->a:Lcom/android/settings/FallbackHome;

    invoke-static {p1}, Lcom/android/settings/FallbackHome;->a(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    :cond_0
    return-void
.end method
