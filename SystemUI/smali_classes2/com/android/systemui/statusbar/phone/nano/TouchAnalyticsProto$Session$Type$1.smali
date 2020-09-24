.class final Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type$1;
.super Ljava/lang/Object;
.source "TouchAnalyticsProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;
    .locals 0

    .line 1351
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;->forNumber(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 1349
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type$1;->findValueByNumber(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$Type;

    move-result-object p0

    return-object p0
.end method
