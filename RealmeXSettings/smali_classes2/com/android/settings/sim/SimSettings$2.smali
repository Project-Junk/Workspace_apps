.class final Lcom/android/settings/sim/SimSettings$2;
.super Landroid/telephony/PhoneStateListener;
.source "SimSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/android/settings/sim/SimSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/sim/SimSettings;I)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/android/settings/sim/SimSettings$2;->b:Lcom/android/settings/sim/SimSettings;

    iput p2, p0, Lcom/android/settings/sim/SimSettings$2;->a:I

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 1

    .line 252
    iget-object p2, p0, Lcom/android/settings/sim/SimSettings$2;->b:Lcom/android/settings/sim/SimSettings;

    invoke-static {p2}, Lcom/android/settings/sim/SimSettings;->b(Lcom/android/settings/sim/SimSettings;)[I

    move-result-object p2

    iget v0, p0, Lcom/android/settings/sim/SimSettings$2;->a:I

    aput p1, p2, v0

    .line 253
    iget-object p1, p0, Lcom/android/settings/sim/SimSettings$2;->b:Lcom/android/settings/sim/SimSettings;

    invoke-static {p1}, Lcom/android/settings/sim/SimSettings;->c(Lcom/android/settings/sim/SimSettings;)V

    return-void
.end method
