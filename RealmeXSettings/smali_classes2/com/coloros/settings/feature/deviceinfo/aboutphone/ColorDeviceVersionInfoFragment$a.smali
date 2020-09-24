.class final Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment$a;
.super Ljava/lang/Object;
.source "ColorDeviceVersionInfoFragment.java"

# interfaces
.implements Lcom/android/settings/dashboard/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/android/settings/dashboard/f;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/f;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment$a;->a:Lcom/android/settings/dashboard/f;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceVersionInfoFragment$a;->a:Lcom/android/settings/dashboard/f;

    invoke-static {}, Lcom/coloros/settings/feature/deviceinfo/controller/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/f;->a(Lcom/android/settings/dashboard/f$b;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
