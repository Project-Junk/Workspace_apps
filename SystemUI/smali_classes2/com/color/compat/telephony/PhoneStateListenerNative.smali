.class public Lcom/color/compat/telephony/PhoneStateListenerNative;
.super Lcom/color/inner/telephony/PhoneStateListenerWrapper;
.source "PhoneStateListenerNative.java"


# static fields
.field public static LISTEN_SRVCC_STATE_CHANGED:I = 0x4000
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "PhoneStateListenerNative"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lcom/color/inner/telephony/PhoneStateListenerWrapper;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public getSubId()I
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 49
    invoke-super {p0}, Lcom/color/inner/telephony/PhoneStateListenerWrapper;->getSubId()I

    move-result p0

    return p0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 44
    invoke-super {p0, p1, p2}, Lcom/color/inner/telephony/PhoneStateListenerWrapper;->onCallStateChanged(ILjava/lang/String;)V

    return-void
.end method

.method public onSrvccStateChanged(I)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 39
    invoke-super {p0, p1}, Lcom/color/inner/telephony/PhoneStateListenerWrapper;->onSrvccStateChanged(I)V

    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 54
    invoke-super {p0, p1}, Lcom/color/inner/telephony/PhoneStateListenerWrapper;->setSubId(I)V

    return-void
.end method
