.class final Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment$1;
.super Ljava/lang/Object;
.source "ColorDeviceInfoGridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment$1;->a:Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment$1;->a:Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;

    invoke-virtual {v0}, Lcom/coloros/settings/feature/deviceinfo/aboutphone/ColorDeviceInfoGridFragment;->highlightPreferenceForce()V

    return-void
.end method
