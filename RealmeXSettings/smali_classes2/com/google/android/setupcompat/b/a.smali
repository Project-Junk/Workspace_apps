.class public final enum Lcom/google/android/setupcompat/b/a;
.super Ljava/lang/Enum;
.source "PartnerConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/b/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/setupcompat/b/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/google/android/setupcompat/b/a;

.field public static final enum B:Lcom/google/android/setupcompat/b/a;

.field public static final enum C:Lcom/google/android/setupcompat/b/a;

.field public static final enum D:Lcom/google/android/setupcompat/b/a;

.field public static final enum E:Lcom/google/android/setupcompat/b/a;

.field public static final enum F:Lcom/google/android/setupcompat/b/a;

.field public static final enum G:Lcom/google/android/setupcompat/b/a;

.field private static final synthetic J:[Lcom/google/android/setupcompat/b/a;

.field public static final enum a:Lcom/google/android/setupcompat/b/a;

.field public static final enum b:Lcom/google/android/setupcompat/b/a;

.field public static final enum c:Lcom/google/android/setupcompat/b/a;

.field public static final enum d:Lcom/google/android/setupcompat/b/a;

.field public static final enum e:Lcom/google/android/setupcompat/b/a;

.field public static final enum f:Lcom/google/android/setupcompat/b/a;

.field public static final enum g:Lcom/google/android/setupcompat/b/a;

.field public static final enum h:Lcom/google/android/setupcompat/b/a;

.field public static final enum i:Lcom/google/android/setupcompat/b/a;

.field public static final enum j:Lcom/google/android/setupcompat/b/a;

.field public static final enum k:Lcom/google/android/setupcompat/b/a;

.field public static final enum l:Lcom/google/android/setupcompat/b/a;

.field public static final enum m:Lcom/google/android/setupcompat/b/a;

.field public static final enum n:Lcom/google/android/setupcompat/b/a;

.field public static final enum o:Lcom/google/android/setupcompat/b/a;

.field public static final enum p:Lcom/google/android/setupcompat/b/a;

.field public static final enum q:Lcom/google/android/setupcompat/b/a;

.field public static final enum r:Lcom/google/android/setupcompat/b/a;

.field public static final enum s:Lcom/google/android/setupcompat/b/a;

.field public static final enum t:Lcom/google/android/setupcompat/b/a;

.field public static final enum u:Lcom/google/android/setupcompat/b/a;

.field public static final enum v:Lcom/google/android/setupcompat/b/a;

.field public static final enum w:Lcom/google/android/setupcompat/b/a;

.field public static final enum x:Lcom/google/android/setupcompat/b/a;

.field public static final enum y:Lcom/google/android/setupcompat/b/a;

.field public static final enum z:Lcom/google/android/setupcompat/b/a;


# instance fields
.field final H:Ljava/lang/String;

.field final I:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 24
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->c:I

    const/4 v2, 0x0

    const-string v3, "CONFIG_STATUS_BAR_BACKGROUND"

    const-string v4, "setup_compat_status_bar_background"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->a:Lcom/google/android/setupcompat/b/a;

    .line 28
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->a:I

    const/4 v3, 0x1

    const-string v4, "CONFIG_LIGHT_STATUS_BAR"

    const-string v5, "setup_compat_light_status_bar"

    invoke-direct {v0, v4, v3, v5, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->b:Lcom/google/android/setupcompat/b/a;

    .line 31
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->b:I

    const/4 v4, 0x2

    const-string v5, "CONFIG_NAVIGATION_BAR_BG_COLOR"

    const-string v6, "setup_compat_navigation_bar_bg_color"

    invoke-direct {v0, v5, v4, v6, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->c:Lcom/google/android/setupcompat/b/a;

    .line 34
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->b:I

    const/4 v5, 0x3

    const-string v6, "CONFIG_FOOTER_BAR_BG_COLOR"

    const-string v7, "setup_compat_footer_bar_bg_color"

    invoke-direct {v0, v6, v5, v7, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->d:Lcom/google/android/setupcompat/b/a;

    .line 38
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->a:I

    const/4 v6, 0x4

    const-string v7, "CONFIG_LIGHT_NAVIGATION_BAR"

    const-string v8, "setup_compat_light_navigation_bar"

    invoke-direct {v0, v7, v6, v8, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->e:Lcom/google/android/setupcompat/b/a;

    .line 42
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->d:I

    const/4 v7, 0x5

    const-string v8, "CONFIG_FOOTER_BUTTON_FONT_FAMILY"

    const-string v9, "setup_compat_footer_button_font_family"

    invoke-direct {v0, v8, v7, v9, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->f:Lcom/google/android/setupcompat/b/a;

    .line 46
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->c:I

    const/4 v8, 0x6

    const-string v9, "CONFIG_FOOTER_BUTTON_ICON_ADD_ANOTHER"

    const-string v10, "setup_compat_footer_button_icon_add_another"

    invoke-direct {v0, v9, v8, v10, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->g:Lcom/google/android/setupcompat/b/a;

    .line 50
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->c:I

    const/4 v9, 0x7

    const-string v10, "CONFIG_FOOTER_BUTTON_ICON_CANCEL"

    const-string v11, "setup_compat_footer_button_icon_cancel"

    invoke-direct {v0, v10, v9, v11, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->h:Lcom/google/android/setupcompat/b/a;

    .line 54
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->c:I

    const/16 v10, 0x8

    const-string v11, "CONFIG_FOOTER_BUTTON_ICON_CLEAR"

    const-string v12, "setup_compat_footer_button_icon_clear"

    invoke-direct {v0, v11, v10, v12, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->i:Lcom/google/android/setupcompat/b/a;

    .line 58
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->c:I

    const/16 v11, 0x9

    const-string v12, "CONFIG_FOOTER_BUTTON_ICON_DONE"

    const-string v13, "setup_compat_footer_button_icon_done"

    invoke-direct {v0, v12, v11, v13, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->j:Lcom/google/android/setupcompat/b/a;

    .line 62
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->c:I

    const/16 v12, 0xa

    const-string v13, "CONFIG_FOOTER_BUTTON_ICON_NEXT"

    const-string v14, "setup_compat_footer_button_icon_next"

    invoke-direct {v0, v13, v12, v14, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->k:Lcom/google/android/setupcompat/b/a;

    .line 66
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->c:I

    const/16 v13, 0xb

    const-string v14, "CONFIG_FOOTER_BUTTON_ICON_OPT_IN"

    const-string v15, "setup_compat_footer_button_icon_opt_in"

    invoke-direct {v0, v14, v13, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->l:Lcom/google/android/setupcompat/b/a;

    .line 70
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->c:I

    const/16 v14, 0xc

    const-string v15, "CONFIG_FOOTER_BUTTON_ICON_SKIP"

    const-string v13, "setup_compat_footer_button_icon_skip"

    invoke-direct {v0, v15, v14, v13, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->m:Lcom/google/android/setupcompat/b/a;

    .line 74
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->c:I

    const/16 v13, 0xd

    const-string v15, "CONFIG_FOOTER_BUTTON_ICON_STOP"

    const-string v14, "setup_compat_footer_button_icon_stop"

    invoke-direct {v0, v15, v13, v14, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->n:Lcom/google/android/setupcompat/b/a;

    .line 78
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->e:I

    const/16 v14, 0xe

    const-string v15, "CONFIG_FOOTER_BUTTON_PADDING_TOP"

    const-string v13, "setup_compat_footer_button_padding_top"

    invoke-direct {v0, v15, v14, v13, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->o:Lcom/google/android/setupcompat/b/a;

    .line 82
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->e:I

    const-string v13, "CONFIG_FOOTER_BUTTON_PADDING_BOTTOM"

    const/16 v15, 0xf

    const-string v14, "setup_compat_footer_button_padding_bottom"

    invoke-direct {v0, v13, v15, v14, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->p:Lcom/google/android/setupcompat/b/a;

    .line 86
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->e:I

    const-string v13, "CONFIG_FOOTER_BUTTON_RADIUS"

    const/16 v14, 0x10

    const-string v15, "setup_compat_footer_button_radius"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->q:Lcom/google/android/setupcompat/b/a;

    .line 89
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->f:I

    const-string v13, "CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA"

    const/16 v14, 0x11

    const-string v15, "setup_compat_footer_button_ripple_alpha"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->r:Lcom/google/android/setupcompat/b/a;

    .line 93
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->e:I

    const-string v13, "CONFIG_FOOTER_BUTTON_TEXT_SIZE"

    const/16 v14, 0x12

    const-string v15, "setup_compat_footer_button_text_size"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->s:Lcom/google/android/setupcompat/b/a;

    .line 97
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->b:I

    const-string v13, "CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR"

    const/16 v14, 0x13

    const-string v15, "setup_compat_footer_primary_button_bg_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->t:Lcom/google/android/setupcompat/b/a;

    .line 101
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->b:I

    const-string v13, "CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR"

    const/16 v14, 0x14

    const-string v15, "setup_compat_footer_primary_button_text_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->u:Lcom/google/android/setupcompat/b/a;

    .line 105
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->b:I

    const-string v13, "CONFIG_FOOTER_SECONDARY_BUTTON_BG_COLOR"

    const/16 v14, 0x15

    const-string v15, "setup_compat_footer_secondary_button_bg_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->v:Lcom/google/android/setupcompat/b/a;

    .line 109
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->b:I

    const-string v13, "CONFIG_FOOTER_SECONDARY_BUTTON_TEXT_COLOR"

    const/16 v14, 0x16

    const-string v15, "setup_compat_footer_secondary_button_text_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->w:Lcom/google/android/setupcompat/b/a;

    .line 113
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->b:I

    const-string v13, "CONFIG_LAYOUT_BACKGROUND_COLOR"

    const/16 v14, 0x17

    const-string v15, "setup_compat_layout_bg_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->x:Lcom/google/android/setupcompat/b/a;

    .line 116
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->b:I

    const-string v13, "CONFIG_HEADER_TEXT_COLOR"

    const/16 v14, 0x18

    const-string v15, "setup_design_header_text_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->y:Lcom/google/android/setupcompat/b/a;

    .line 119
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->e:I

    const-string v13, "CONFIG_HEADER_TEXT_SIZE"

    const/16 v14, 0x19

    const-string v15, "setup_design_header_text_size"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->z:Lcom/google/android/setupcompat/b/a;

    .line 122
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->d:I

    const-string v13, "CONFIG_HEADER_FONT_FAMILY"

    const/16 v14, 0x1a

    const-string v15, "setup_design_header_font_family"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->A:Lcom/google/android/setupcompat/b/a;

    .line 125
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->d:I

    const-string v13, "CONFIG_LAYOUT_GRAVITY"

    const/16 v14, 0x1b

    const-string v15, "setup_design_layout_gravity"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->B:Lcom/google/android/setupcompat/b/a;

    .line 128
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->b:I

    const-string v13, "CONFIG_HEADER_AREA_BACKGROUND_COLOR"

    const/16 v14, 0x1c

    const-string v15, "setup_design_header_area_background_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->C:Lcom/google/android/setupcompat/b/a;

    .line 132
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->e:I

    const-string v13, "CONFIG_DESCRIPTION_TEXT_SIZE"

    const/16 v14, 0x1d

    const-string v15, "setup_design_description_text_size"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->D:Lcom/google/android/setupcompat/b/a;

    .line 135
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->b:I

    const-string v13, "CONFIG_DESCRIPTION_TEXT_COLOR"

    const/16 v14, 0x1e

    const-string v15, "setup_design_description_text_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->E:Lcom/google/android/setupcompat/b/a;

    .line 138
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->b:I

    const-string v13, "CONFIG_DESCRIPTION_LINK_TEXT_COLOR"

    const/16 v14, 0x1f

    const-string v15, "setup_design_description_link_text_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->F:Lcom/google/android/setupcompat/b/a;

    .line 142
    new-instance v0, Lcom/google/android/setupcompat/b/a;

    sget v1, Lcom/google/android/setupcompat/b/a$a;->d:I

    const-string v13, "CONFIG_DESCRIPTION_FONT_FAMILY"

    const/16 v14, 0x20

    const-string v15, "setup_design_description_font_family"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/b/a;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/google/android/setupcompat/b/a;->G:Lcom/google/android/setupcompat/b/a;

    const/16 v0, 0x21

    .line 21
    new-array v0, v0, [Lcom/google/android/setupcompat/b/a;

    sget-object v1, Lcom/google/android/setupcompat/b/a;->a:Lcom/google/android/setupcompat/b/a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->b:Lcom/google/android/setupcompat/b/a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/setupcompat/b/a;->c:Lcom/google/android/setupcompat/b/a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/setupcompat/b/a;->d:Lcom/google/android/setupcompat/b/a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/setupcompat/b/a;->e:Lcom/google/android/setupcompat/b/a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/setupcompat/b/a;->f:Lcom/google/android/setupcompat/b/a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/setupcompat/b/a;->g:Lcom/google/android/setupcompat/b/a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/setupcompat/b/a;->h:Lcom/google/android/setupcompat/b/a;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/setupcompat/b/a;->i:Lcom/google/android/setupcompat/b/a;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/setupcompat/b/a;->j:Lcom/google/android/setupcompat/b/a;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/setupcompat/b/a;->k:Lcom/google/android/setupcompat/b/a;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/setupcompat/b/a;->l:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->m:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->n:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->o:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->p:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->q:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->r:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->s:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->t:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->u:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->v:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->w:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->x:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->y:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->z:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->A:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->B:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->C:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->D:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->E:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->F:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/b/a;->G:Lcom/google/android/setupcompat/b/a;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/setupcompat/b/a;->J:[Lcom/google/android/setupcompat/b/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 164
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 165
    iput-object p3, p0, Lcom/google/android/setupcompat/b/a;->H:Ljava/lang/String;

    .line 166
    iput p4, p0, Lcom/google/android/setupcompat/b/a;->I:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/setupcompat/b/a;
    .locals 1

    .line 21
    const-class v0, Lcom/google/android/setupcompat/b/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/b/a;

    return-object p0
.end method

.method public static values()[Lcom/google/android/setupcompat/b/a;
    .locals 1

    .line 21
    sget-object v0, Lcom/google/android/setupcompat/b/a;->J:[Lcom/google/android/setupcompat/b/a;

    invoke-virtual {v0}, [Lcom/google/android/setupcompat/b/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/setupcompat/b/a;

    return-object v0
.end method
