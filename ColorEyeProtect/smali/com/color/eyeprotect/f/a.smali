.class public final Lcom/color/eyeprotect/f/a;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/color/eyeprotect/f/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/color/eyeprotect/f/a;

    invoke-direct {v0}, Lcom/color/eyeprotect/f/a;-><init>()V

    sput-object v0, Lcom/color/eyeprotect/f/a;->a:Lcom/color/eyeprotect/f/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p0, "context"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "key"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "value"

    invoke-static {p3, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "eventId"

    invoke-static {p4, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p3}, La/n;->a(Ljava/lang/Object;Ljava/lang/Object;)La/j;

    move-result-object p0

    invoke-static {p0}, La/a/v;->a(La/j;)Ljava/util/Map;

    move-result-object p0

    const-string p2, "20130"

    const/4 p3, 0x0

    invoke-static {p1, p2, p4, p0, p3}, Lcom/oppo/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public final a(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beginTime"

    invoke-static {p4, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endTime"

    invoke-static {p5, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    const-string v1, "protect_eyes_ever_enable"

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/color/eyeprotect/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "value"

    if-eqz p3, :cond_1

    const-string p3, "1"

    goto :goto_1

    :cond_1
    const-string p3, "0"

    :goto_1
    const-string v0, "protect_eyes_timer_state"

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/color/eyeprotect/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "value"

    const-string p3, "protect_eyes_begin_time"

    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/color/eyeprotect/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "value"

    const-string p3, "protect_eyes_end_time"

    invoke-virtual {p0, p1, p2, p5, p3}, Lcom/color/eyeprotect/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "level"

    invoke-static {p1}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/Context;)F

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p3

    const-string p4, "screen_display_value"

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/color/eyeprotect/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "value"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p3}, Lcom/color/eyeprotect/util/e;->p(Landroid/content/ContentResolver;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "1"

    goto :goto_2

    :cond_2
    const-string p3, "0"

    :goto_2
    const-string p4, "color_temperature_switch"

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/color/eyeprotect/f/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
