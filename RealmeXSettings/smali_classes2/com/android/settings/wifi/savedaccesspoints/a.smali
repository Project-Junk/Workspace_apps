.class public final Lcom/android/settings/wifi/savedaccesspoints/a;
.super Ljava/lang/Object;
.source "SavedNetworkComparator.java"


# static fields
.field public static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/wifi/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/android/settings/wifi/savedaccesspoints/a$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/savedaccesspoints/a$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/savedaccesspoints/a;->a:Ljava/util/Comparator;

    return-void
.end method
