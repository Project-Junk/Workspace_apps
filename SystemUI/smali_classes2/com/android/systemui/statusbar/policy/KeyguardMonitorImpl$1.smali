.class Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "KeyguardMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;Landroid/content/Context;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->access$002(Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;I)I

    .line 68
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl$1;->this$0:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->access$100(Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;)V

    return-void
.end method
