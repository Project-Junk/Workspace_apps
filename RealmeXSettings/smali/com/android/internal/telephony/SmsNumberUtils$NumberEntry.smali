.class Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;
.super Ljava/lang/Object;
.source "SmsNumberUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsNumberUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NumberEntry"
.end annotation


# instance fields
.field public IDD:Ljava/lang/String;

.field public countryCode:I

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/SmsNumberUtils$NumberEntry;->number:Ljava/lang/String;

    return-void
.end method
