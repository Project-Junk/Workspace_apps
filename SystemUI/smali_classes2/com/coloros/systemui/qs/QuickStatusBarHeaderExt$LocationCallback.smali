.class final Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$LocationCallback;
.super Ljava/lang/Object;
.source "QuickStatusBarHeaderExt.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocationCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)V
    .locals 0

    .line 406
    iput-object p1, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$LocationCallback;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$1;)V
    .locals 0

    .line 406
    invoke-direct {p0, p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$LocationCallback;-><init>(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;)V

    return-void
.end method


# virtual methods
.method public onLocationSettingsChanged(Z)V
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt$LocationCallback;->this$0:Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;

    invoke-static {p0, p1}, Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;->access$102(Lcom/coloros/systemui/qs/QuickStatusBarHeaderExt;Z)Z

    return-void
.end method
