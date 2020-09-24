.class Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "ColorBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/ColorBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field private final mBrightnessForVrUri:Landroid/net/Uri;

.field private final mBrightnessModeUri:Landroid/net/Uri;

.field private final mBrightnessUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;


# direct methods
.method public constructor <init>(Lcom/coloros/systemui/qs/ColorBrightnessController;Landroid/os/Handler;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    .line 123
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "screen_brightness_mode"

    .line 118
    invoke-static {p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSystemUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->mBrightnessModeUri:Landroid/net/Uri;

    const-string p1, "screen_brightness"

    .line 119
    invoke-static {p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSystemUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->mBrightnessUri:Landroid/net/Uri;

    const-string p1, "screen_brightness_for_vr"

    .line 120
    invoke-static {p1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSystemUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->mBrightnessForVrUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, p1, v0}, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 137
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->mBrightnessModeUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 138
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$100(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p2}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$000(Lcom/coloros/systemui/qs/ColorBrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$100(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p2}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$200(Lcom/coloros/systemui/qs/ColorBrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 140
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->mBrightnessUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 141
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$100(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p2}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$200(Lcom/coloros/systemui/qs/ColorBrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->mBrightnessForVrUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 143
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$100(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p2}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$200(Lcom/coloros/systemui/qs/ColorBrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 145
    :cond_3
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$100(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p2}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$000(Lcom/coloros/systemui/qs/ColorBrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    iget-object p1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$100(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p2}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$200(Lcom/coloros/systemui/qs/ColorBrightnessController;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 148
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {p0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$300(Lcom/coloros/systemui/qs/ColorBrightnessController;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessStateChangeCallback;

    .line 149
    invoke-interface {p1}, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public startObserving()V
    .locals 4

    .line 154
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$400(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 155
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 156
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->mBrightnessModeUri:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 159
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->mBrightnessUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 162
    iget-object v1, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->mBrightnessForVrUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public stopObserving()V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/coloros/systemui/qs/ColorBrightnessController$BrightnessObserver;->this$0:Lcom/coloros/systemui/qs/ColorBrightnessController;

    invoke-static {v0}, Lcom/coloros/systemui/qs/ColorBrightnessController;->access$400(Lcom/coloros/systemui/qs/ColorBrightnessController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 169
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
