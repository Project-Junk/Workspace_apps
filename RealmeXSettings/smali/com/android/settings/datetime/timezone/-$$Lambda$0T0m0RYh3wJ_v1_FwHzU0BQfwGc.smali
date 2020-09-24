.class public final synthetic Lcom/android/settings/datetime/timezone/-$$Lambda$0T0m0RYh3wJ_v1_FwHzU0BQfwGc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$a;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/-$$Lambda$0T0m0RYh3wJ_v1_FwHzU0BQfwGc;->f$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;

    return-void
.end method


# virtual methods
.method public final onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/b;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/-$$Lambda$0T0m0RYh3wJ_v1_FwHzU0BQfwGc;->f$0:Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;

    invoke-virtual {v0, p1}, Lcom/android/settings/datetime/timezone/BaseTimeZonePicker;->c(Lcom/android/settings/datetime/timezone/model/b;)V

    return-void
.end method
