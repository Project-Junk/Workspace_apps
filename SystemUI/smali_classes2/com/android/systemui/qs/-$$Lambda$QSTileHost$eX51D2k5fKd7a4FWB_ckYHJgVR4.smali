.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSTileHost$eX51D2k5fKd7a4FWB_ckYHJgVR4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/QSTileHost;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSTileHost;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$eX51D2k5fKd7a4FWB_ckYHJgVR4;->f$0:Lcom/android/systemui/qs/QSTileHost;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/-$$Lambda$QSTileHost$eX51D2k5fKd7a4FWB_ckYHJgVR4;->f$0:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->lambda$checkDefaultCustomTileAvailable$8$QSTileHost()V

    return-void
.end method
