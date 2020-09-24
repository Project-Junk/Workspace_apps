.class public final Lcom/color/settingslib/provider/ColorSearchIndexablesContract$NonIndexableKey;
.super Lcom/color/settingslib/provider/ColorSearchIndexablesContract$BaseColumns;
.source "ColorSearchIndexablesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/settingslib/provider/ColorSearchIndexablesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NonIndexableKey"
.end annotation


# static fields
.field public static final COLUMN_KEY_VALUE:Ljava/lang/String; = "key"

.field public static final MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/non_indexables_key"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 280
    invoke-direct {p0, v0}, Lcom/color/settingslib/provider/ColorSearchIndexablesContract$BaseColumns;-><init>(Lcom/color/settingslib/provider/ColorSearchIndexablesContract$1;)V

    return-void
.end method
