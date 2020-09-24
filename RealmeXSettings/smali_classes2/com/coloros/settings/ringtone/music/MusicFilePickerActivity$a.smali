.class final Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity$a;
.super Lcom/coloros/settings/utils/be;
.source "MusicFilePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/coloros/settings/utils/be<",
        "Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;)V
    .locals 0

    .line 115
    invoke-direct {p0, p1}, Lcom/coloros/settings/utils/be;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final synthetic handleMessage(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    .line 113
    check-cast p2, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;

    if-eqz p2, :cond_0

    .line 1121
    invoke-static {p2, p1}, Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;->a(Lcom/coloros/settings/ringtone/music/MusicFilePickerActivity;Landroid/os/Message;)V

    :cond_0
    return-void
.end method
