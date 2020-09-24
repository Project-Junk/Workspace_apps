.class final Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$3;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$3;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 151
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$3;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->e(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 152
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$3;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    invoke-static {p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->f(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)V

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat$3;->a:Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;

    .line 155
    invoke-static {p1}, Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;->c(Lcom/coloros/settings/feature/storage/sdcard/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "format_init_click_settings"

    goto :goto_0

    :cond_1
    const-string v0, "format_init_click_others"

    .line 154
    :goto_0
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
