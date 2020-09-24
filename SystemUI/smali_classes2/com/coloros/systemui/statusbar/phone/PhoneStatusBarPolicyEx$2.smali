.class Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$2;
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

    .line 197
    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$2;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx$2;->this$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;

    invoke-virtual {p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->updateHolidayIcon()V

    return-void
.end method
