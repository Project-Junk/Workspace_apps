.class public final Lcom/color/settingslib/provider/ColorSearchIndexablesContract$XmlResource;
.super Lcom/color/settingslib/provider/ColorSearchIndexablesContract$BaseColumns;
.source "ColorSearchIndexablesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/settingslib/provider/ColorSearchIndexablesContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "XmlResource"
.end annotation


# static fields
.field public static final COLUMN_XML_RESID:Ljava/lang/String; = "xmlResId"

.field public static final MIME_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/indexables_xml_res"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 183
    invoke-direct {p0, v0}, Lcom/color/settingslib/provider/ColorSearchIndexablesContract$BaseColumns;-><init>(Lcom/color/settingslib/provider/ColorSearchIndexablesContract$1;)V

    return-void
.end method
