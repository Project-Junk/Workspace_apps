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

    .line 37
    invoke-direct {p0, p1}, Lcom/color/inner/telephony/PhoneStateListenerWrapper;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onSrvccStateChanged(I)V
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1d
    .end annotation

    .line 42
    invoke-super {p0, p1}, Lcom/color/inner/telephony/PhoneStateListenerWrapper;->onSrvccStateChanged(I)V

    return-void
.end method
