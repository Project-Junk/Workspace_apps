.class final Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$2;
.super Ljava/lang/Object;
.source "MusicFilePickerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcolor/support/design/widget/ColorAppBarLayout;

.field final synthetic b:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;


# direct methods
.method constructor <init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;Lcolor/support/design/widget/ColorAppBarLayout;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$2;->b:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    iput-object p2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$2;->a:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 398
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$2;->a:Lcolor/support/design/widget/ColorAppBarLayout;

    invoke-virtual {v0}, Lcolor/support/design/widget/ColorAppBarLayout;->getMeasuredHeight()I

    move-result v0

    .line 399
    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$2;->b:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-virtual {v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 400
    iget-object v2, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$2;->b:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-static {v2}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->e(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$2;->b:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-static {v3}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->e(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->getPaddingLeft()I

    move-result v3

    iget-object v4, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$2;->b:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    .line 401
    invoke-static {v4}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->e(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v0

    add-int/2addr v4, v1

    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$2;->b:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    .line 402
    invoke-static {v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->e(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$2;->b:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    .line 403
    invoke-static {v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->e(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->getPaddingBottom()I

    move-result v1

    .line 400
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerListView;->setPadding(IIII)V

    .line 404
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$2;->b:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->f(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Z

    .line 405
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$2;->b:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->g(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$2;->b:Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    invoke-static {v0}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->d(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)V

    :cond_0
    return-void
.end method
