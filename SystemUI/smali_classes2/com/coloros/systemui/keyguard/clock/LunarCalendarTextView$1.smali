.class Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView$1;
.super Landroid/database/ContentObserver;
.source "LunarCalendarTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;Landroid/os/Handler;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 57
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;

    .line 58
    invoke-static {p1}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->access$100(Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "key_is_show_lunar_calendar"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    .line 57
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->access$002(Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;Z)Z

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mShowLunarObserver onChange:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->access$000(Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LunarCalendarTextView"

    invoke-static {v0, p1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView$1;->this$0:Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;->access$200(Lcom/coloros/systemui/keyguard/clock/LunarCalendarTextView;)V

    return-void
.end method
