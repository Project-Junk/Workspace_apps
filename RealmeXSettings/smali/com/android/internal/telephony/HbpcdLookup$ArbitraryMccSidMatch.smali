.class public Lcom/android/internal/telephony/HbpcdLookup$ArbitraryMccSidMatch;
.super Ljava/lang/Object;
.source "HbpcdLookup.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/HbpcdLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArbitraryMccSidMatch"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "MCC ASC"

.field public static final MCC:Ljava/lang/String; = "MCC"

.field public static final SID:Ljava/lang/String; = "SID"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://hbpcd_lookup/arbitrary"

    .line 106
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/HbpcdLookup$ArbitraryMccSidMatch;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method