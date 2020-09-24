.class Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$3;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBarPolicyEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;Landroid/os/Handler;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$3;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 210
    iget-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$3;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;

    invoke-static {p1}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->access$100(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "log_switch_type"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 211
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$3;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->updateLogIcon(Z)V

    .line 212
    invoke-static {v0}, Lcom/coloros/common/util/LogUtil;->setNormalDebugState(Z)V

    return-void
.end method
