.class final Lcom/android/settings/FallbackHome$3;
.super Landroid/os/AsyncTask;
.source "FallbackHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FallbackHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/settings/FallbackHome;


# direct methods
.method constructor <init>(Lcom/android/settings/FallbackHome;I)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settings/FallbackHome$3;->b:Lcom/android/settings/FallbackHome;

    iput p2, p0, Lcom/android/settings/FallbackHome$3;->a:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 2147
    iget-object p1, p0, Lcom/android/settings/FallbackHome$3;->b:Lcom/android/settings/FallbackHome;

    .line 2148
    invoke-static {p1}, Lcom/android/settings/FallbackHome;->a(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/WallpaperManager;->getWallpaperColors(I)Landroid/app/WallpaperColors;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2152
    iget-object p1, p0, Lcom/android/settings/FallbackHome$3;->b:Lcom/android/settings/FallbackHome;

    invoke-static {p1}, Lcom/android/settings/FallbackHome;->a(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/FallbackHome$3;->b:Lcom/android/settings/FallbackHome;

    invoke-static {v0}, Lcom/android/settings/FallbackHome;->c(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager$OnColorsChangedListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/WallpaperManager;->addOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;Landroid/os/Handler;)V

    return-object v1

    .line 2156
    :cond_0
    iget v0, p0, Lcom/android/settings/FallbackHome$3;->a:I

    invoke-static {p1, v0}, Lcom/android/settings/FallbackHome;->a(Landroid/app/WallpaperColors;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 144
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 1164
    iget-object v0, p0, Lcom/android/settings/FallbackHome$3;->b:Lcom/android/settings/FallbackHome;

    invoke-virtual {v0}, Lcom/android/settings/FallbackHome;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
